#Create Network + Subnets + Service Endpoints

module "az_network" {
  source                                         = "../../01-Modules/azure_network"
  network_name                                   = var.nw_name
  location                                       = var.location
  network_resource_group_name                    = var.core_network_rg_name
  network_address_prefix                         = var.nw_addr_prefixes
  network_dns_servers                            = null
  subnet_names                                   = var.subnet_names
  subnet_address_prefixes                        = var.subnet_addr_prefixes
  service_endpoints                              = var.subnet_service_endpoints
}

## Subnet Delegation - Dbks

 module "az_network_subnet_del_dbks" {
  source                      = "../../01-Modules/azure_network_delegated_subnet"
  network_name                = module.az_network.vnet_name # Network name is fetched from the output of the Backend Module.
  network_resource_group_name = var.core_network_rg_name
  subnet_names                = var.del_subnet_names_dbks
  subnet_address_prefixes     = var.del_subnet_address_prefixes_dbks
  service_endpoints           = var.del_subnet_service_endpoints_dbks
  service_delegation          = var.del_subnet_service_delegation_dbks
  service_delegation_actions  = var.del_subnet_service_delegation_actions_dbks
}

## Create Network Security Group + Associate Network Security Group to Subnet.
## Databricks Public Subnet Only has NSG Associated.

module "az_network_security_grp" {
  source                        = "../../01-Modules/azure_network_security_group"
  name                          = var.nsg_name
  location                      = var.location
  network_resource_group_name   = var.core_network_rg_name
  subnet_id                     = module.az_network_subnet_del_dbks.subnet_ids
}

## User Defined Routing:-

module "user_defined_routing_onprem" {
  source                        = "../../01-Modules/azure_user_defined_routing"
  location                      = var.location
  resource_group_name           = var.core_network_rg_name
  route_table_name              = var.onprem_route_table_name
  disable_bgp_route_propagation = true
}

## Associate Subnet to User Defined Routing:-

module "udr_associate_subnets" {
  source                        = "../../01-Modules/azure_user_defined_routing_subnet_association"
  count                         = length(var.udr_link.associate_subnets) 
  resource_group_name           = var.core_network_rg_name 
  udr_name                      = module.user_defined_routing_onprem.route_table_name 
  network_name                  = module.az_network.vnet_name
  subnet_name                   = var.udr_link.associate_subnets[count.index]
  depends_on                    = [module.user_defined_routing_onprem, module.az_network, module.az_network_subnet_del_dbks]
}

# Create Private Endpoint DNS Zones:-

module "azure_Private_Dns_Zones" {
  source                    = "../../01-Modules/azure_private_dns_zones"
  #deploy_private_dns_zones = var.ValidatePrivateDNSZones
  private_dns_zone_names    = var.PrivateDNSZonesList
  resource_group_name       = var.core_network_rg_name 
}

## Link Private Endpoint DNS to VNet:-

module "azure_private_dns_zones_link" {
  source                = "../../01-Modules/azure_private_dns_zones_vnet_link"
  count                 = length(var.dns_vnet_link)
  private_dns_zone_name = var.dns_vnet_link[count.index].dns_zone_name
  linkname              = var.vnet_link_name
  resource_group_name   = var.core_network_rg_name
  virtual_network_id    = [module.az_network.vnet_id]
}
# Azure Virtual Networks
resource "azurerm_virtual_network" "azure_network_vnet" {
  name                                           = var.network_name
  location                                       = var.location
  resource_group_name                            = var.network_resource_group_name
  address_space                                  = var.network_address_prefix
  dns_servers                                    = var.network_dns_servers
  #enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

# Azure Virtual Network Subnets
resource "azurerm_subnet" "azure_network_subnets" {
  count                                           = length(var.subnet_address_prefixes)
  resource_group_name                             = var.network_resource_group_name
  name                                            = var.subnet_names[count.index]
  virtual_network_name                            = azurerm_virtual_network.azure_network_vnet.name
  address_prefixes                                = [element(var.subnet_address_prefixes, count.index)] # var.subnet_address_prefixes[count.index]
  service_endpoints                               = var.service_endpoints[count.index]

  depends_on = [
    azurerm_virtual_network.azure_network_vnet
  ]
}

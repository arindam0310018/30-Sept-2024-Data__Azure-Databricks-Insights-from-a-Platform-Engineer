#########################################
##### Databricks                    #####
#########################################
module "az_dbks" {
  source                            = "../../01-Modules/azure_databricks"
  resource_group_name               = var.resource_group_name
  dbks_name                         = var.dbks_name
  location                          = var.location
  dbks_managed_RG                   = var.dbks_managed_RG
  dbks_public_subnet_name           = data.azurerm_subnet.dbks_public_subnet.name
  dbks_public_subnet_nsg_assoc_id   = data.azurerm_subnet.dbks_public_subnet.id
  dbks_private_subnet_name          = data.azurerm_subnet.dbks_private_subnet.name
  dbks_private_subnet_nsg_assoc_id  = data.azurerm_subnet.dbks_private_subnet.id  
  dbks_virtual_network_id           = data.azurerm_virtual_network.vnet.id
}
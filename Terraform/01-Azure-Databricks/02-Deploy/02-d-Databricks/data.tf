# Data Block:-
data "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.core_network_rg_name
}

data "azurerm_subnet" "dbks_public_subnet" {
  name                 = var.dbks_public_subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.core_network_rg_name
}

data "azurerm_subnet" "dbks_private_subnet" {
  name                 = var.dbks_private_subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.core_network_rg_name
}


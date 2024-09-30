# Azure Virtual Network Subnets
resource "azurerm_subnet" "azure_network_subnets" {
  count                = length(var.subnet_address_prefixes)
  resource_group_name  = var.network_resource_group_name
  name                 = var.subnet_names[count.index]
  virtual_network_name = var.network_name
  address_prefixes     = [element(var.subnet_address_prefixes, count.index)]
  #service_endpoints    = var.service_endpoints[count.index] != null ? var.service_endpoints[count.index]  : null
  service_endpoints    = var.service_endpoints[count.index]
  
  delegation {
    name = var.service_delegation[count.index][0]

    service_delegation {
      name    = var.service_delegation[count.index][1]
      actions = var.service_delegation_actions[count.index]
    }
  }
}
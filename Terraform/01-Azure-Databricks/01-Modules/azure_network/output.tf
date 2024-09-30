output "vnet_name" {
  value = azurerm_virtual_network.azure_network_vnet.name
}

output "vnet_id" {
  value = azurerm_virtual_network.azure_network_vnet.id
}

output "vnet_resource_group" {
  value = azurerm_virtual_network.azure_network_vnet.resource_group_name
}

output "subnet_names" {
  value = azurerm_subnet.azure_network_subnets.*.name
}

output "subnet_ids" {
  value = azurerm_subnet.azure_network_subnets.*.id
}

output "subnet_subnet_id_map" {
  value = zipmap(azurerm_subnet.azure_network_subnets.*.name, azurerm_subnet.azure_network_subnets.*.id)
}
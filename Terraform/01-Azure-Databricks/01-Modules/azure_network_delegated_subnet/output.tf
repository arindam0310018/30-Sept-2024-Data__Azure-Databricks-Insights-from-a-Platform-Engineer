output "subnet_ids" {
  value = azurerm_subnet.azure_network_subnets.*.id
}

output "subnet_names" {
  value = azurerm_subnet.azure_network_subnets.*.name
}

output "subnet_subnet_id_map" {
  value = zipmap(azurerm_subnet.azure_network_subnets.*.name, azurerm_subnet.azure_network_subnets.*.id)
}
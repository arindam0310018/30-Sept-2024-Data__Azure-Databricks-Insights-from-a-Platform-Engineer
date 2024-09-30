output "id" {
  value = azurerm_private_dns_zone.private_dns_zones.*.id
}

output "name" {
  value = azurerm_private_dns_zone.private_dns_zones.*.name
}
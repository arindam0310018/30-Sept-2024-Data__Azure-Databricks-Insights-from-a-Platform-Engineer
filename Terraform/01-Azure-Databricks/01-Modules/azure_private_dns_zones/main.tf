## Private DNS
resource "azurerm_private_dns_zone" "private_dns_zones" {
  count               = length(var.private_dns_zone_names)
  name                = var.private_dns_zone_names[count.index]
  resource_group_name = var.resource_group_name
}
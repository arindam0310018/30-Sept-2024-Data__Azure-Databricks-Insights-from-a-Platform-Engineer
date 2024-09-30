# Retrieve Private DNS Zones:- 
data "azurerm_private_dns_zone" "private_dns_zone" {
  name                = var.private_dns_zone_name
  resource_group_name = var.resource_group_name
}

# Link Private DNS Zone to VNet:-
resource "azurerm_private_dns_zone_virtual_network_link" "vnet-link" {
  count                 = length(var.virtual_network_id)
  name                  = "${var.linkname}${count.index + 1}"
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = data.azurerm_private_dns_zone.private_dns_zone.name
  virtual_network_id    = var.virtual_network_id[count.index]
}



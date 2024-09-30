resource "azurerm_network_security_group" "network_nsg" {
  name                = var.name
  location            = var.location
  resource_group_name = var.network_resource_group_name
  #tags                = var.tags
}

resource "azurerm_subnet_network_security_group_association" "nsg_subnet_assoc" {
  count                     = length(var.subnet_id)
  subnet_id                 = var.subnet_id[count.index]
  network_security_group_id = azurerm_network_security_group.network_nsg.id
  depends_on                = [azurerm_network_security_group.network_nsg]
}
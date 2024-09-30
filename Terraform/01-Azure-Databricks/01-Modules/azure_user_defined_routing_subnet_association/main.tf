# Retrieve Subnet 
data "azurerm_subnet" "subnet" {
  virtual_network_name = var.network_name
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
}

# Retrieve UDR
data "azurerm_route_table" "user_defined_routes" {
  name                = var.udr_name
  resource_group_name = var.resource_group_name
}

# Subnet UDR Association
resource "azurerm_subnet_route_table_association" "subnet_udr_association" {
  subnet_id      = data.azurerm_subnet.subnet.id
  route_table_id = data.azurerm_route_table.user_defined_routes.id
}

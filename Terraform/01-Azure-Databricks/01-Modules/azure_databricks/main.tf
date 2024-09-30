resource "azurerm_databricks_workspace" "dbks" {
  name                          = var.dbks_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  sku                           = var.dbks_sku
  managed_resource_group_name   = var.dbks_managed_RG

  custom_parameters {
    no_public_ip                                            = var.dbks_no_public_ip
    public_subnet_name                                      = var.dbks_public_subnet_name
    public_subnet_network_security_group_association_id     = var.dbks_public_subnet_nsg_assoc_id
    private_subnet_name                                     = var.dbks_private_subnet_name
    private_subnet_network_security_group_association_id    = var.dbks_private_subnet_nsg_assoc_id
    virtual_network_id                                      = var.dbks_virtual_network_id
  }

  #tags = var.tags
}
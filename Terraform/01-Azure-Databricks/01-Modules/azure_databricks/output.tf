output "dbks_id" {
  value = azurerm_databricks_workspace.dbks.id
}

output "dbks_rg" {
  value = azurerm_databricks_workspace.dbks.managed_resource_group_id
}

output "dbks_ws_id" {
  value = azurerm_databricks_workspace.dbks.workspace_id
}

output "dbks_ws_url" {
  value = azurerm_databricks_workspace.dbks.workspace_url
}

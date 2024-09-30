variable "dbks_name" {
  type        = string
  description = "Databricks Name"
}

variable "location" {
  type        = string
  description = "Specifies azure region/location where resources will be created."
}

variable "dbks_managed_RG" {
  type        = string
  description = "Databricks Managed Resource Group Name"
}

variable "vnet_name" {
  type        = string
  description = "Virtual Network Name"
}

variable "dbks_public_subnet_name" {
  type        = string
  description = "Databricks Public Subnet Name"
}

variable "dbks_private_subnet_name" {
  type        = string
  description = "Databricks Private Subnet Name"
}

variable "core_network_rg_name" {
  type        = string
  description = "Network Resource Group Name"
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group Name"
}
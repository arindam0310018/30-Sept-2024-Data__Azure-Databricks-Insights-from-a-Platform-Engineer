variable "dbks_name" {
  type        = string
  description = "Specifies the name of the databricks. Changing this forces a new resource to be created. Must be globally unique."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the databricks."
}

variable "dbks_sku" {
  type        = string
  description = "The sku to use for the Databricks Workspace."
  default     = "standard"
}

variable "dbks_managed_RG" {
  type        = string
  description = "The name of the resource group where Azure should place the managed Databricks resources."
}

variable "dbks_no_public_ip" {
  type        = bool
  default     = false
  description = "Are public IP Addresses not allowed?"
}

variable "dbks_public_subnet_name" {
  type        = string
  description = "The name of the Public Subnet within the Virtual Network."
}

variable "dbks_public_subnet_nsg_assoc_id" {
  type        = string
  description = "Public Subnet Network Security Group Association ID."
}

variable "dbks_private_subnet_name" {
  type        = string
  description = "The name of the Public Subnet within the Virtual Network."
}

variable "dbks_private_subnet_nsg_assoc_id" {
  type        = string
  description = "Private Subnet Network Security Group Association ID."
}

variable "dbks_virtual_network_id" {
  type        = string
  description = "The ID of a Virtual Network where this Databricks Cluster should be created."
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

# variable "tags" {
#   type = map(any)
# }

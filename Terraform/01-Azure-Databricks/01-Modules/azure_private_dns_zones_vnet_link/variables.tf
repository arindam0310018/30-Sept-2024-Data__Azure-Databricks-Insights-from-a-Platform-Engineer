variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group where the resources will be created"
}

variable "private_dns_zone_name" {
  type        = string
  description = "The name of the Private DNS Zone"
}

variable "linkname" {
  type        = string
  description = "The name of the Private DNS Zone"
  #default     = "vnet-link-0"
}

variable "virtual_network_id" {
  type        = list(string)
  description = "The ID of the Virtual Network which will be linked to the zone"
}

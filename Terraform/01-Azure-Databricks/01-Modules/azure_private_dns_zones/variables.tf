#Private DNS Zones
variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group where the resources will be created"
}

variable "private_dns_zone_names" {
  type        = list(string)
  description = "The name of the Private DNS Zone"
}

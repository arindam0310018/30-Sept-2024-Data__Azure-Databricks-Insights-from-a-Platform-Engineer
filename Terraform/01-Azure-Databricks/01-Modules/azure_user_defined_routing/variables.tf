variable "route_table_name" {
  type        = string
  description = "The name of the the UDR table"
}

variable "location" {
  type        = string
  description = "The location to create the UDR table e.g uksouth, westeurope"
}

variable "resource_group_name" {
  description = "The name of the resource group to place the UDR in"
}

variable "disable_bgp_route_propagation" {
  type        = bool
  default     = false
  description = "Boolean flag which controls propagation of routes learned by BGP on that route table. True means disable."
}
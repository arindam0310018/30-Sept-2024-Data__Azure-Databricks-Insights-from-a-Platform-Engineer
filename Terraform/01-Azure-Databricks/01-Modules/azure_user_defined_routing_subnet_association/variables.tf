variable "network_name" {
  type        = string
  description = "The name of the VNET where the subnet to associate is located"
}

variable "resource_group_name" {
  type        = string
  description = "The resource group of the VNET/UDR"
}

variable "subnet_name" {
  type        = string
  description = "The name of the Subnet to associate with the provided UDR"
}

variable "udr_name" {
  type        = string
  description = "The name of the UDR to associate with the provided subnet"
}

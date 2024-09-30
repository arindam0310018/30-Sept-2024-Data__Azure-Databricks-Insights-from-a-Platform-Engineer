variable "network_name" {
  type        = string
  description = "Virtual network name"
}

variable "location" {
  type        = string
  description = "The location/region where the core network will be created. The full list of Azure regions can be found at https://azure.microsoft.com/regions"
}

variable "network_resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "network_address_prefix" {
  type        = list(string)
  description = "Azure Virtual Network Address Prefix"
}

variable "network_dns_servers" {
  type        = list(string)
  description = "Azure Network DNS addresses"
}

# variable "enforce_private_link_endpoint_network_policies" {
#   type    = bool
#   default = false
# }

######

variable "subnet_names" {
  type        = list(string)
  description = "Azure Network Subnet Names"
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "Azure Network Subnet Prefixes"
}

variable "service_endpoints" {
  type        = list(list(string))
  description = "A list of Service Endpoints to be used for the virtual network"
}

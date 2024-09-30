variable "network_name" {
  type        = string
  description = "Virtual network name"
}

variable "network_resource_group_name" {
  type        = string
  description = "Network Resource group name"
}

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

variable "service_delegation" {
  type        = list(list(string))
  description = "Delegation Collection each of the subnet"
}

variable "service_delegation_actions" {
  type        = list(list(string))
  description = "Delegation Collection each of the subnet"
}

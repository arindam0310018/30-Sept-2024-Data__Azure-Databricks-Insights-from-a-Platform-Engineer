variable "location" {
  type        = string
  description = "Specifies azure region/location where resources will be created."
}

variable "core_network_rg_name" {
  type        = string
  description = "The existing core network resource group name"
}

#############

variable "nw_name" {
  type        = string
  description = "Virtual network name"
}

variable "nw_addr_prefixes" {
  type        = list(string)
  description = "Azure Virtual Network Address Prefix"
}

variable "subnet_names" {
  type        = list(string)
  description = "Azure Network Subnet Names"
}

variable "subnet_addr_prefixes" {
  type        = list(string)
  description = "Azure Network Subnet Prefixes"
}

variable "subnet_service_endpoints" {
  type        = list(list(string))
  description = "A list of Service Endpoints to be used for the virtual network"
}

#############

# variable "del_subnet_names" {
#   type        = list(string)
#   description = "Azure Network Subnet Names"
# }

variable "del_subnet_names_app" {
  type        = list(string)
  description = "Azure Network Subnet Names"
}

variable "del_subnet_names_dbks" {
  type        = list(string)
  description = "Azure Network Subnet Names"
}

# variable "del_subnet_address_prefixes" {
#   type        = list(string)
#   description = "Azure Network Subnet Prefixes"
# }

variable "del_subnet_address_prefixes_app" {
  type        = list(string)
  description = "Azure Network Subnet Prefixes"
}

variable "del_subnet_address_prefixes_dbks" {
  type        = list(string)
  description = "Azure Network Subnet Prefixes"
}

# variable "del_subnet_service_endpoints" {
#   type        = list(list(string))
#   description = "A list of Service Endpoints to be used for the virtual network"
# }

variable "del_subnet_service_endpoints_app" {
  type        = list(list(string))
  description = "A list of Service Endpoints to be used for the virtual network"
}

variable "del_subnet_service_endpoints_dbks" {
  type        = list(list(string))
  description = "A list of Service Endpoints to be used for the virtual network"
}

# variable "del_subnet_service_delegation" {
#   type        = list(list(string))
#   description = "Delegation Collection each of the subnet"
# }

variable "del_subnet_service_delegation_app" {
  type        = list(list(string))
  description = "Delegation Collection each of the subnet"
}

variable "del_subnet_service_delegation_dbks" {
  type        = list(list(string))
  description = "Delegation Collection each of the subnet"
}

# variable "del_subnet_service_delegation_actions" {
#   type        = list(list(string))
#   description = "Delegation Collection each of the subnet"
# }

variable "del_subnet_service_delegation_actions_app" {
  type        = list(list(string))
  description = "Delegation Collection each of the subnet"
}

variable "del_subnet_service_delegation_actions_dbks" {
  type        = list(list(string))
  description = "Delegation Collection each of the subnet"
}

#############

variable "nsg_name" {
  type        = string
  description = "Network Security Group Name"
}

#############

variable "onprem_route_table_name" {
  type        = string
  description = "The name of the the UDR table - On Prem"
}

variable "udr_link" {
  default     = ""
  description = "Describes which network subnets UDRs will be linked to"
}

#############

# variable "ValidatePrivateDNSZones" {
#   type        = bool
#   default     = false
#   description = "Specifies whether private DNS zones should be deployed"
# }

variable "PrivateDNSZonesList" {
  type        = list(string)
  description = "List of private DNS zones to create"
}

# #############

variable "vnet_link_name" {
  type        = string
  description = "DNS VNET link name"
}

variable "dns_vnet_link" {
  type = list(object({
    dns_zone_name = string
  }))
  description = "dns_vnet_link"
}

#############

# variable "dbks_name" {
#   type        = string
#   description = "Databricks Name"
# }

# variable "dbks_managed_RG" {
#   type        = string
#   description = "Databricks Managed Resource Group Name"
# }

# variable "resource_group_name" {
#   type        = string
#   description = "Resource Group Name"
# }
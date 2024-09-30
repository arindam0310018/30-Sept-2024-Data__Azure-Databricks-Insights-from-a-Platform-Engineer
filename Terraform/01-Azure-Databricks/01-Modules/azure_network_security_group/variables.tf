variable "name" {
  type          = string
  description   = "Network Security Group Name"  
}

variable "location" {
  type          = string
  description   = "Specifies azure region/location where resources will be created."  
}

variable "network_resource_group_name" {
  type = string
  description   = "Network Resource Group Name"

}

variable "subnet_id" {
  type        = list(string)
  #default     = []
  description = "Subnet to associate with NSG"
}
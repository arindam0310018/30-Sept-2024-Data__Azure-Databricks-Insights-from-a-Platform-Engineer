#############

location = "West Europe"
core_network_rg_name = "_Network-RG" 
nw_name = "Test-VNet"
nw_addr_prefixes = ["192.168.100.0/24", "192.168.200.0/24"]
subnet_names = ["Test-Vnet-Integration-Subnet", "Test-Vnet-Data-Subnet", "Test-Vnet-PE-Subnet"]
subnet_addr_prefixes = ["192.168.100.0/27", "192.168.100.32/27", "192.168.100.64/27"]
subnet_service_endpoints =  [["Microsoft.KeyVault"], ["Microsoft.Storage"], ["Microsoft.KeyVault"]]

#############

#del_subnet_names = ["Test-Vnet-PE-Integration-Subnet", "Test-Vnet-Dbks-Public-Subnet", "Test-Vnet-Dbks-Private-Subnet"]
del_subnet_names_app = ["Test-Vnet-PE-Integration-Subnet"]
del_subnet_names_dbks = ["Test-Vnet-Dbks-Public-Subnet", "Test-Vnet-Dbks-Private-Subnet"]

#del_subnet_address_prefixes = ["192.168.100.96/27", "192.168.200.0/25", "192.168.200.128/25"]
del_subnet_address_prefixes_app = ["192.168.100.96/27"]
del_subnet_address_prefixes_dbks = ["192.168.200.0/25", "192.168.200.128/25"]

#del_subnet_service_endpoints = [[], ["Microsoft.KeyVault", "Microsoft.Storage"], ["Microsoft.KeyVault", "Microsoft.Storage"]]
del_subnet_service_endpoints_app = [[]]
del_subnet_service_endpoints_dbks = [["Microsoft.KeyVault", "Microsoft.Storage"], ["Microsoft.KeyVault", "Microsoft.Storage"]]

#del_subnet_service_delegation = [["Test-appservice", "Microsoft.Web/serverFarms"], ["Test-Dbks-Pub", "Microsoft.Databricks/workspaces"], ["Test-Dbks-Priv", "Microsoft.Databricks/workspaces"] ]
del_subnet_service_delegation_app = [["Test-appservice", "Microsoft.Web/serverFarms"]]
del_subnet_service_delegation_dbks = [["Test-Dbks-Pub", "Microsoft.Databricks/workspaces"], ["Test-Dbks-Priv", "Microsoft.Databricks/workspaces"] ]

# del_subnet_service_delegation_actions = [
#   [
#     "Microsoft.Network/virtualNetworks/subnets/action",
#     "Microsoft.Network/virtualNetworks/subnets/join/action",
#     "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
#     "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"
#   ],
#   [
#     "Microsoft.Network/virtualNetworks/subnets/action",
#     "Microsoft.Network/virtualNetworks/subnets/join/action",
#     "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
#     "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"
#   ],
#   [
#     "Microsoft.Network/virtualNetworks/subnets/action",
#     "Microsoft.Network/virtualNetworks/subnets/join/action",
#     "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
#     "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"
#   ]
# ]

del_subnet_service_delegation_actions_app = [
  [
    "Microsoft.Network/virtualNetworks/subnets/action",
    "Microsoft.Network/virtualNetworks/subnets/join/action",
    "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
    "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"
  ]
]

del_subnet_service_delegation_actions_dbks = [
  [
    "Microsoft.Network/virtualNetworks/subnets/action",
    "Microsoft.Network/virtualNetworks/subnets/join/action",
    "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
    "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"
  ],
  [
    "Microsoft.Network/virtualNetworks/subnets/action",
    "Microsoft.Network/virtualNetworks/subnets/join/action",
    "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
    "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"
  ]
]

#############

onprem_route_table_name = "Test-OnPrem-RouteTable"
udr_link                = {
  associate_subnets = [
    "Test-Vnet-Integration-Subnet",
    "Test-Vnet-Data-Subnet",
    "Test-Vnet-PE-Subnet",
    "Test-Vnet-PE-Integration-Subnet", 
    "Test-Vnet-Dbks-Public-Subnet", 
    "Test-Vnet-Dbks-Private-Subnet"
  ]
}

#############

nsg_name = "Test-dbks-nsg"

#############

# ValidatePrivateDNSZones = "true"

PrivateDNSZonesList = [
  "privatelink.dfs.core.windows.net",
  "privatelink.blob.core.windows.net",
  "privatelink.azurewebsites.net",
  "privatelink.vaultcore.azure.net"
]

#############

vnet_link_name    = "vnet-link-0"

dns_vnet_link = [
  { dns_zone_name = "privatelink.dfs.core.windows.net" },
  { dns_zone_name = "privatelink.blob.core.windows.net" },
  { dns_zone_name = "privatelink.azurewebsites.net" },
  { dns_zone_name = "privatelink.vaultcore.azure.net" } 
]

#############

# dbks_name                   = "Test-DBKS" 
# dbks_managed_RG             = "_AM-Dbks-RG"
# resource_group_name         = "_AM-RG"

#############


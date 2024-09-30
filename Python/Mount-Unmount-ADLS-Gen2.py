############################
# Link to Microsoft Learn:-
# https://learn.microsoft.com/en-us/azure/databricks/dbfs/mounts#--mount-adls-gen2-or-blob-storage-with-abfs
############################

########################
# Declare Variables:-
########################

storage_account_name = "amdbkssa"
storage_account_container_name = "dbfs-test-container"
mount_point = "data"
tenant_id = "20516b3d-42af-4bd4-b2e6-e6b4051af72a"
client_id = "ff723d3f-3e27-4985-9790-d6a06831e21b"
client_secret = "XXXXXX"

###########################
# Define Authentication:-
###########################

configs = {"fs.azure.account.auth.type": "OAuth",
          "fs.azure.account.oauth.provider.type": "org.apache.hadoop.fs.azurebfs.oauth2.ClientCredsTokenProvider",
          "fs.azure.account.oauth2.client.id": f"{client_id}",
          "fs.azure.account.oauth2.client.secret": f"{client_secret}",
          "fs.azure.account.oauth2.client.endpoint": f"https://login.microsoftonline.com/{tenant_id}/oauth2/token"}
		  

#######################################
## Mount Storage Account Container:-
#######################################

dbutils.fs.mount(
  source = f"abfss://{storage_account_container_name}@{storage_account_name}.dfs.core.windows.net/",
  mount_point = f"/mnt/{mount_point}",
  extra_configs = configs)

###########################
## Verify Mount Points:-
###########################

%fs ls /mnt/data


###########################
## Unmount Mount Points:-
###########################

%fs unmount /mnt/data

############################
## View All Mount Points:-
############################

%fs mounts





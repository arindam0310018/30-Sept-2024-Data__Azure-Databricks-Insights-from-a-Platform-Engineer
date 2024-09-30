terraform {
  required_version = ">= 1.0.3"

  backend "azurerm" {
    resource_group_name  = "_Admin-RG"
    storage_account_name = "amadminsa"
    container_name       = "terraform"
    key                  = "Test/network.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.2"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.20.0"
    }
    # databricks = {
    #   source = "databrickslabs/databricks"
    #   version = "0.5.9"
    # }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}
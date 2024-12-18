terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.14.0"
    }
  }
  backend "azurerm" {
    resource_group_name = var.resource-grp
    storage_account_name = var.storage-account-name
    container_name = var.container-name
    key = var.tfstate
  }
}

provider "azurerm" {
  features {}

}
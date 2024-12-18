resource "azurerm_resource_group" "rg" {
    name = var.resource-grp
    location = var.location
  
}

resource "azurerm_storage_account" "sa" {

    name = var.storage-account-name
    resource_group_name =  azurerm_resource_group.rg.name
    location = var.location
    depends_on = [ azurerm_resource_group.rg ]
    account_tier = "Standard"
    account_replication_type = "LRS"

  
}

resource "azurerm_storage_container" "container" {
  name = var.container-name
  storage_account_id = azurerm_storage_account.sa.id
  container_access_type = "blob"
}
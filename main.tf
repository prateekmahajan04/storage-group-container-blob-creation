resource "azurerm_storage_account" "storename" {
  name                     = "storagemenn"
  resource_group_name      = "pratRG"
  account_replication_type = "GRS"
  account_tier             = "Standard"
  location                 = "eastus"

}

resource "azurerm_storage_container" "containername" {
  name                  = "storagecontainerr"
  storage_account_id    = azurerm_storage_account.storename.id
  container_access_type = "blob"
}
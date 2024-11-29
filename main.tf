resource "azurerm_resource_group" "example" {
  name     = "dheeraj01"
  location = "west us"
}

resource "azurerm_storage_account" "stg" {
  name = "stg0021"
  location = "west us"
  resource_group_name = "dheeraj01"
  account_tier = "standard"
  account_replication_type = "LRS"
  
}
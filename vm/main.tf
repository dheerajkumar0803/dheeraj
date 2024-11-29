resource "azurerm_resource_group" "main" {
    name = "dheeraj"
    location = "west us" 
}

resource "azurerm_storage_account" "main2" {
    name = "xyz100021"
    location = "west us"
    resource_group_name = "dheeraj"
    account_tier = "Standard"
    account_replication_type = "LRS"
}

resource "azurerm_virtual_network" "main3" {
  name = "vnet001"
  location = "west us"
  address_space = ["10.0.0.0/16"]
  resource_group_name = "dheeraj"
}

resource "azurerm_subnet" "main4" {
    name = "dubnet001"
    resource_group_name = "dheeraj"
    virtual_network_name = "vnet001"
    address_prefixes = ["10.0.1.0/24"]  
  
}


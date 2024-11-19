resource "azurerm_resource_group" "example" {
  name     = "dheeraj"
  location = "west us"
}

resource "azurerm_resource_group" "file1" {
  name     = "devops"
  location = "canada east"
}
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "example" {
  name     = "example-resourcesone"
  location = "West Europe"
}

 resource "azurerm_storage_account" "exampleone" {
  name                     = "evgdemo"
 location                  = azurerm_resource_group.example.location
 resource_group_name       = azurerm_resource_group.example.name
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}

provider "azurerm" {
features {}
}

resource "azurerm_resource_group" "example" {
  name     = "githubactionsrg"
  location = "East US"
}
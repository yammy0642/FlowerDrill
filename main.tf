terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
  subscription_id = "3de54ce0-297b-4a95-b908-52facf8095dc"
  tenant_id = "cde61e4c-19dc-4736-a451-d6dd75e87149"
}

resource "azurerm_resource_group" "example" {
  name     = "githubactionsrg"
  location = "East US"
}
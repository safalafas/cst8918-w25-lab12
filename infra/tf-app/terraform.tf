terraform {
  required_version = ">= 0.13"

  backend "azurerm" {
    resource_group_name  = "chau0317-githubaction-rg"
    storage_account_name = "chau0317githubaction"
    container_name       = "tfstate"
    key                  = "prod.app.tfstate"
    use_oidc             = true
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}

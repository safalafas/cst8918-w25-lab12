resource "azurerm_resource_group" "app_rg" {
  name     = "chau0317-a12-rg"
  location = "canadacentral"
}

resource "azurerm_virtual_network" "lab_vnet" {
  name                = "lab-vnet"
  location            = azurerm_resource_group.tf_app_rg.location
  resource_group_name = azurerm_resource_group.tf_app_rg.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "lab_subnet" {
  name                 = "lab-subnet"
  resource_group_name  = azurerm_resource_group.tf_app_rg.name
  virtual_network_name = azurerm_virtual_network.lab_vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

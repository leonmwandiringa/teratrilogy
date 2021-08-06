resource "azurerm_availability_set" "default" {
  name                = "default-aset"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}
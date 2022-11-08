create new resource group.
resource "azurerm_resource_group" "rg" {
  name     = "ankur-rg"
  location = var.primary_region
}

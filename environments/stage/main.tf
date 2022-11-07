
resource "azurerm_resource_group" "rg" {
  name     = "testingresourcegroup"
  location = var.primary_region
}

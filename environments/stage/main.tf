# # create new resource group.
resource "azurerm_resource_group" "rg" {
  name     = "ankur-rg"
  location = var.primary_region
}

# create new Azure SQL managed server
resource "azurerm_mssql_server" "example" {
  name                         = "ankur-mssql"
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = "serveradmin"
  administrator_login_password = "thisisankur"
  minimum_tls_version          = "1.2"
  public_network_access_enabled = false
  
  tags = {
    environment = "stage"
  }
}
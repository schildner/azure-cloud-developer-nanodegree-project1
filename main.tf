provider "azurerm" {
  features {}
}
terraform {
  backend "azurerm" {
    resource_group_name  = "remote-backend-rg"
    storage_account_name = "tstate19841"
    container_name       = "tstate"
    key                  = "terraform-cloud-developer-project1.tfstate"
    #access_key           = "" provided via env var ARM_ACCESS_KEY
    # access keys can be found in portal: storage account tstate19841 -> access keys -> show
  }
}
module "resource_group" {
  source               = "./terraform/resource-group"
  resource_group       = var.resource_group
  location             = var.location
}

resource "azurerm_storage_account" "sa" {
  name                     = "saproject1"
  resource_group_name      = var.resource_group
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    description = "project1"
  }
}

resource "azurerm_storage_container" "cont" {
  name                  = "cont-project1"
  storage_account_name  = azurerm_storage_account.sa.name
}

resource "azurerm_sql_server" "sqlserver" {
  name                         = "sqlserver-project1"
  resource_group_name          = var.resource_group
  location                     = var.location

  version                      = "12.0"
  administrator_login          = "udacityadmin"
  administrator_login_password = "Hard1ToGuess!"

  tags = {
    description = "project1"
  }
}

resource "azurerm_sql_firewall_rule" "fwazureaccess" {
  name                = "azureaccess"
  resource_group_name = var.resource_group
  server_name         = azurerm_sql_server.sqlserver.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}

resource "azurerm_sql_firewall_rule" "fwclientip" {
  name                = "azureaccess"
  resource_group_name = var.resource_group
  server_name         = azurerm_sql_server.sqlserver.name
  start_ip_address    = "77.21.83.103" # public ip of my mac
  end_ip_address      = "77.21.83.103"
}

resource "azurerm_sql_database" "db" {
  name                = "sqldatabase"
  resource_group_name = var.resource_group
  location            = var.location
  server_name         = azurerm_sql_server.sqlserver.name

 # extended_auditing_policy {
 #   storage_endpoint                        = azurerm_storage_account.sa.primary_blob_endpoint
 #   storage_account_access_key              = azurerm_storage_account.sa.primary_access_key
 #   storage_account_access_key_is_secondary = true
 #   retention_in_days                       = 6
 # }

  tags = {
    description = "project1"
  }
}
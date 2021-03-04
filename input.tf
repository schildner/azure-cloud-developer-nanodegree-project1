# Azure GUIDS
#variable "subscription_id" {}
#variable "client_id" {}
#variable "client_secret" {}
#variable "tenant_id" {}

# Resource Group/Location
variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
}
variable "resource_group" {
  description = "The resource group for the module's resources."
}
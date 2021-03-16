#!/bin/bash
RG="cloud-developer-project1-rg"
LOCATION="eastus"
SA="saeduardudacity"

az group create \
  --resource-group $RG \
  --location $LOCATION

az storage account create \
  --name $SA \
  --resource-group $RG \
  --location $LOCATION

az storage container create \
  --account-name $SA \
  --name images \
  --auth-mode login \
  --public-access container  

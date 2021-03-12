#!/bin/bash
az storage account create \
  --name saeduardudacity \
  --resource-group cloud-developer-project1-rg \
  --location westus2

az storage container create \
  --account-name saeduardudacity \
  --name images \
  --auth-mode login \
  --public-access container  
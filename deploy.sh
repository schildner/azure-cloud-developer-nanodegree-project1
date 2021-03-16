#!/bin/bash

az webapp up \
  --resource-group cloud-developer-project1-rg \
  --location eastus \
  --plan udacity-eduard-project1-asp \
  --sku F1 \
  --name udacity-eduard-project1-app

az webapp config appsettings set --settings \
  CLIENT_SECRET=$CLIENT_SECRET \
  SECRET_KEY=$SECRET_KEY \
  CLIENT_ID=$CLIENT_ID \
  SQL_PASSWORD=$SQL_PASSWORD \
  BLOB_STORAGE_KEY=$BLOB_STORAGE_KEY

#!/bin/bash

az group create --name RG_VM01 --location "East US"



az vm create \
    --resource-group RG_VM01 \
    --name VM_Ubuntu_01 \
    --image UbuntuLTS \
    --admin-username superuser \
    --generate-ssh-keys \
    --custom-data cloud-init.txt

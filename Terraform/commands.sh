#! /bin/bash

# get info about terraform
tf -help
tf <command> -help

# Initialize terraform
terraform init

# Plan the infrastructure
terraform plan

# Apply the infrastructure
terraform apply

# Destroy the all the infrastructure
terraform destroy

# Destroy the specific resource
terraform destroy -target=<resource_type>.<resource_name> # not recommended

# Update the state file
terraform refresh # not recommended

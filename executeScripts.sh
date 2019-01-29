#!/bin/bash

terraform validate
terraform fmt
terraform plan -var-file "runtimeVariables.tfvars"

#echo "yes" | terraform apply -var-file "runtimeVariables.tfvars"
terraform apply -var-file "runtimeVariables.tfvars" -input=false -auto-approve

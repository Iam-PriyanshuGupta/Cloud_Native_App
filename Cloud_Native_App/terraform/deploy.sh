#!/bin/bash

set -e

echo "Starting Terraform deployment..."

terraform init

terraform validate

terraform plan -out=tfplan

terraform apply -auto-approve tfplan

terraform output

echo "Deployment finished."

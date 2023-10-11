# terraform-test

terraform init

## operations

terraform plan -var-file=config/operations.tfvars

terraform apply -var-file=config/operations.tfvars

terraform destroy -var-file=config/operations.tfvars


## production

terraform plan -var-file=config/production.tfvars

terraform apply -var-file=config/production.tfvars

terraform destroy -var-file=config/production.tfvars

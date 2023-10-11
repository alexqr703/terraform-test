# global/operations-vpc.tf
module "vpc" {
  source = "../modules/vpc"

  vpc_cidr        = "10.1.0.0/16"
  vpc_name        = "OperationsVPC"
  project         = "YourProject"
  environment     = "Operations"
  public_subnet_az1_cidr = "10.1.1.0/24"
  public_subnet_az2_cidr = "10.1.2.0/24"
  public_subnet_az3_cidr = "10.1.3.0/24"
  private_subnet_az1_cidr = "10.1.4.0/24"
  private_subnet_az2_cidr = "10.1.5.0/24"
  private_subnet_az3_cidr = "10.1.6.0/24"
}

output "operations_vpc_id" {
  value = module.vpc.vpc_id
}

output "operations_public_subnets" {
  value = module.vpc.public_subnets
}

output "operations_private_subnets" {
  value = module.vpc.private_subnets
}

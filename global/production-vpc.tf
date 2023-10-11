# global/production-vpc.tf
module "vpc" {
  source = "../modules/vpc"

  vpc_cidr        = "10.0.0.0/16"
  vpc_name        = "ProductionVPC"
  project         = "YourProject"
  environment     = "Production"
  public_subnet_az1_cidr = "10.0.1.0/24"
  public_subnet_az2_cidr = "10.0.2.0/24"
  public_subnet_az3_cidr = "10.0.3.0/24"
  private_subnet_az1_cidr = "10.0.4.0/24"
  private_subnet_az2_cidr = "10.0.5.0/24"
  private_subnet_az3_cidr = "10.0.6.0/24"
}

output "production_vpc_id" {
  value = module.vpc.vpc_id
}

output "production_public_subnets" {
  value = module.vpc.public_subnets
}

output "production_private_subnets" {
  value = module.vpc.private_subnets
}

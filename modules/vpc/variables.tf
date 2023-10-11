variable "vpc_name" {
  description = "Nombre de la VPC"
}

variable "project" {
  description = "Nombre del proyecto"
}

variable "environment" {
  description = "Entorno de despliegue"
}

variable "vpc_cidr" {
  description = "CIDR block de la VPC"
}

variable "public_subnet_az1_cidr" {
  description = "CIDR block de la subred pública en AZ1"
}

variable "public_subnet_az2_cidr" {
  description = "CIDR block de la subred pública en AZ2"
}

variable "public_subnet_az3_cidr" {
  description = "CIDR block de la subred pública en AZ3"
}

variable "private_subnet_az1_cidr" {
  description = "CIDR block de la subred privada en AZ1"
}

variable "private_subnet_az2_cidr" {
  description = "CIDR block de la subred privada en AZ2"
}

variable "private_subnet_az3_cidr" {
  description = "CIDR block de la subred privada en AZ3"
}

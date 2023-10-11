resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name        = var.vpc_name
    Project     = var.project
    Environment = var.environment
  }
}

resource "aws_subnet" "public_subnet_az1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_az1_cidr
  availability_zone       = data.aws_availability_zones.available_zones.names[0]
  map_public_ip_on_launch = true  # Esta es una subred pública

  tags = {
    Name        = "public subnet az1"
    Project     = var.project
    Environment = var.environment
  }
}

resource "aws_subnet" "public_subnet_az2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_az2_cidr
  availability_zone       = data.aws_availability_zones.available_zones.names[1]
  map_public_ip_on_launch = true  # Esta es una subred pública

  tags = {
    Name        = "public subnet az2"
    Project     = var.project
    Environment = var.environment
  }
}

resource "aws_subnet" "public_subnet_az3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_az3_cidr
  availability_zone       = data.aws_availability_zones.available_zones.names[2]
  map_public_ip_on_launch = true  # Esta es una subred pública

  tags = {
    Name        = "public subnet az3"
    Project     = var.project
    Environment = var.environment
  }
}

resource "aws_subnet" "private_subnet_az1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.private_subnet_az1_cidr
  availability_zone       = data.aws_availability_zones.available_zones.names[0]
  map_public_ip_on_launch = false  # Esta es una subred privada

  tags = {
    Name        = "private subnet az1"
    Project     = var.project
    Environment = var.environment
  }
}

resource "aws_subnet" "private_subnet_az2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.private_subnet_az2_cidr
  availability_zone       = data.aws_availability_zones.available_zones.names[1]
  map_public_ip_on_launch = false  # Esta es una subred privada

  tags = {
    Name        = "private subnet az2"
    Project     = var.project
    Environment = var.environment
  }
}

resource "aws_subnet" "private_subnet_az3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.private_subnet_az3_cidr
  availability_zone       = data.aws_availability_zones.available_zones.names[2]
  map_public_ip_on_launch = false  # Esta es una subred privada

  tags = {
    Name        = "private subnet az3"
    Project     = var.project
    Environment = var.environment
  }
}

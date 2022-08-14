module "vpc-module" { #module name can be changed
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.2" #module version

  #VPC resource 
  name            = "vpc-demo"
  cidr            = "10.0.0.0/16"
  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.100.0/24", "10.0.200.0/24"]

  #database subnet 
  create_database_subnet_group       = true
  create_database_subnet_route_table = true
  database_subnets                   = ["10.0.110.0/24", "10.0.210.0/24"]

  #NAT GW
  enable_nat_gateway = true #this will create NAT for each az
  single_nat_gateway = true #by default is false and create 

  #VPC DNS Parameters
  enable_dns_hostnames = true
  enable_dns_support   = true

  #tag 
  public_subnet_tags = {
    Type = "public-subnets"
  }
  private_subnet_tags = {
    Type = "private-subnets"
  }
  database_subnet_tags = {
    Type = "database-subnets"
  }
  tags = { #will be applied to all resources was created
    Owner        = "Ari"
    Environment = "vpc-demo"
  }
  vpc_tags = {
    Name = "vpc-demo"
  }
}


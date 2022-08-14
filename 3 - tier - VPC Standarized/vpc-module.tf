module "vpc-demo" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.2"

  #vpc 
  name            = "${local.name}-${var.vpc_name}"
  cidr            = var.vpc_cidr_block
  azs             = var.vpc_availability_zones
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets

  #database 
  database_subnets                   = var.vpc_database_subnets
  create_database_subnet_group       = var.vpc_database_subnet_groups
  create_database_subnet_route_table = var.vpc_database_subnet_route_tables

  #NAT 
  enable_nat_gateway = var.vpc_enable_nat_gw
  single_nat_gateway = var.vpc_single_nat_gw

  #VPC DNS 
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags     = local.common_tags
  vpc_tags = local.common_tags

  #additional tags 
  public_subnet_tags = {
    Type = "public-subnets"
  }
  private_subnet_tags = {
    Type = "private-subnets"
  }
  database_subnet_tags = {
    Type = "database-subnets"
  }
}


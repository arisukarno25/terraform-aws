output "vpc_id" {
  desctiption = "VPC ID"
  value       = module.vpc-demo.vpc_id
}
output "vpc_cidr_block" {
  description = "VPC CIDR Bloc"
  value       = module.vpc-demo.cidr
}
output "vpc_private_subnets" {
  description = "VPC Private Subnet"
  value       = module.vpc-demo.private_subnets
}
output "vpc_public_subnets" {
  description = "VPC Public Subnets"
  value       = module.vpc-demo.public_subnets
}
output "nat-ip" {
  description = "NAT IP"
  value       = module.vpc-demo.nat_public_ips
}
output "azs" {
  description = "VPC AZ"
  value       = module.vpc-demo.azs
}
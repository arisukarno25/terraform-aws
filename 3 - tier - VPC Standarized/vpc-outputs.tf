output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc-demo.vpc_id
}
output "vpc_cidr_block" {
  description = "VPC CIDR Bloc"
  value       = module.vpc-demo.vpc_cidr_block #you can't ref by cidr cause there is not support for that module, so you have to follow the module's outputs
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
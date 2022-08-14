variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "vpc-demo"
}
variable "vpc_cidr_block" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/26"
}
variable "vpc_availability_zones" {
  description = "VPC AZ"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}
variable "vpc_public_subnets" {
  description = "VPC Public Subnet"
  type        = list(string)
  default     = ["10.0.1.0/34", "10.0.2.0/24"]
}
variable "vpc_private_subnets" {
  description = "VPC Private Subnet"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}
variable "vpc_database_subnets" {
  description = "VPC Database Subnets"
  type        = list(string)
  default     = ["10.0.5.0/24", "10.0.6.0/24"]
}
variable "vpc_database_subnet_groups" {
  description = "VPC DB Subnet Group"
  type        = bool
  default     = true
}
variable "vpc_database_subnet_route_tables" {
  description = "VPC Database Route Table"
  type        = bool
  default     = true
}
variable "vpc_enable_nat_gw" {
  description = "VPC NAT GW"
  type        = bool
  default     = true
}
variable "vpc_single_nat_gw" {
  description = "VPC Enable Single NAT"
  type        = bool
  default     = true
}

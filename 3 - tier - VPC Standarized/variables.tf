variable "aws_region" {
  description = "region that resource will be deployed"
  type        = string
  default     = "us-east-1"
}
variable "environment" {
  description = "environment used as prefix"
  type        = string
  default     = "dev"
}
variable "divsion" {
  description = "bussines division that related"
  type        = string
  default     = "SAP"
}
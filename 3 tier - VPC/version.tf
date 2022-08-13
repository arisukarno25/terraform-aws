terraform {
  required_version = "~> 0.14"
  required_providers {
    aws = {
      source  = "hasichorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region #follow the `variables.tf`
  profile = "default"      #follow the aws configure 
}




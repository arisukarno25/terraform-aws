terraform {
  required_version = "~> 1.27"
  required_providers {
    aws = {
      source  = "hasichorp/aws"
      version = "~> 3.14.2"
    }
  }
}

provider "aws" {
  region  = var.aws_region #follow the `variables.tf`
  profile = "default"      #follow the aws configure 
}




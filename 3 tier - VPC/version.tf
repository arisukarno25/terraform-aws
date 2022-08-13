terraform {
  required_version = "~> 1.2.0" #~> symbol allows the patch version to be greater than 1 but requires the major and minor versions (1.1)
  required_providers {
    aws = {
      source  = "terraform-aws-modules/vpc/aws"
      version = "~> 3.14.2"
    }
  }
}

provider "aws" {
  region  = var.aws_region #follow the 'variables.tf'
  profile = "default"      #follow the aws configure 
}




terraform {
  required_version = "~> 1.2.1" #~> symbol allows the patch version to be greater than 1 but requires the major and minor versions (1.1)
  required_providers {
    aws = {
      source  = "hasichorp/aws"
      version = "~> 3.14.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region #follow the 'variables.tf'
  profile = "default"      #follow the aws configure 
}




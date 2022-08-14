terraform {
  required_version = "~> 1.2.0" #terraform version, ~> symbol allows the patch version to be greater than 1 but requires the major and minor versions (1.1)
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0" # version constraint refers to https://registry.terraform.io/providers/hashicorp/aws/latest/docs, ~> it's mean the above of minor version. but >= is above the version 
    }
  }
}

provider "aws" {
  region  = var.aws_region #follow the 'variables.tf'
  profile = "default"      #follow the aws configure 
}




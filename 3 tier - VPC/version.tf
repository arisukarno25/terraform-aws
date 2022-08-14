terraform {
  #since this is root module, so have to us version constraint
  required_version = "~> 1.2.0" #terraform version, ~> symbol allows the patch version to be greater than 1 but requires the major and minor versions (1.1) so it will be 1.2.x
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0" # version constraint/provider it will apllied the lates version of 3.0 | refers to https://registry.terraform.io/providers/hashicorp/aws/latest/docs, ~> it's mean the above of minor version. but >= is above the version (it's mean 3.x) 
    }
  }
}

provider "aws" {
  region  = var.aws_region #follow the 'variables.tf'
  profile = "default"      #follow the aws configure 
}




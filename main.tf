terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

module "mysql" {
  source = "github.com/amancharla/terramodules/mysql"

  db_name             = var.db_name
  username            = var.db_username
  password            = var.db_password
}

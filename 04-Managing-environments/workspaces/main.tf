terraform {
  # Assumes s3 bucket and dynamo DB table already set up
  # See /code/01-basics/aws-backend
#   backend "s3" {
#     bucket         = "devops-directive-tf-state"
#     key            = "07-managing-multiple-environments/workspaces/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-state-locking"
#     encrypt        = true
#   }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

variable "db_pass" {
  description = "password for database"
  type        = string
  sensitive   = true
}

locals {
  environment_name = terraform.workspace
}

module "web-app" {
  source = "/home/champ/Terraform-learning/03-organization-and-modules/web-app modules"

  # Input Variables
  bucket_prefix    = "web-app-data-${local.environment_name}"
  domain           = "fawadshaikh.com"
  environment_name = local.environment_name
  instance_type    = "t2.micro"
  create_dns_zone  = terraform.workspace == "production" ? true : false
  db_name          = "${local.environment_name}mydb"
  db_user          = "foo"
  db_pass          = var.db_pass
}

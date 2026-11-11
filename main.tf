terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    databricks = {
      source = "databricks/databricks"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "databricks" {}

data "aws_caller_identity" "current" {}

data "databricks_current_user" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "arn" {
  value = data.aws_caller_identity.current.arn
}

output "user_id" {
  value = data.aws_caller_identity.current.user_id
}

output "dbx_identity" {
  value = data.databricks_current_user.current.user_name
}

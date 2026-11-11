terraform {
  required_version = ">= 1.0.0"
}

provider "aws" {
  region = "us-east-1"
}

data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "arn" {
  value = data.aws_caller_identity.current.arn
}

output "user_id" {
  value = data.aws_caller_identity.current.user_id
}

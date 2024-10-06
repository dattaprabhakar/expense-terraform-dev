terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "prabha-state-dev"
    key    = "expense-bastion"
    region = "us-east-1"
    dynamodb_table = "lock-dev-test"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
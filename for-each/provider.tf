terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "purvanshi-remote-state"
    key    = "expense-for-loop"
    region = "us-east-1"
    dynamodb_table = "purvanshi-remote-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}
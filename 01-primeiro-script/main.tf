terraform {
  required_version = "1.12.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.14.1"
    }
  }
}

provider "aws" {
  region  = "us-east-2"
  profile = "mateus-cli"
}

resource "aws_s3_bucket" "test-bucket" {
  bucket = "terraform-test-bucket-1122"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}

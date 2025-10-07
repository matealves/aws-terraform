terraform {
  required_version = "1.12.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.14.1"
    }
  }

  # backend "s3" {
  #   bucket  = "tfstate-350124734713"
  #   key     = "dev/01-usando-remote-state/terraform.tfstate"
  #   region  = "us-east-2"
  #   profile = "mateus-cli"
  # }
  backend "s3" {}
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

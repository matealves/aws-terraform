terraform {
  required_version = "1.12.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.14.1"
    }
  }

  backend "s3" {
    bucket  = "tfstate-968339500772"
    key     = "dev/03-data-sources-s3/terraform.tfstate"
    region  = "eu-central-1"
    profile = "tf014"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

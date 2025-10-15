terraform {
  required_version = "1.12.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.14.1"
    }
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs#environment-variables
provider "aws" {
  region  = "us-east-2"  # Recomendo a região us-east-1 se você estiver no Brasil
  profile = "mateus-cli" # Usar este atributo somente se não for o profile "default" no arquivo ~/.aws/credentials
}

# terraform validate
# terraform fmt
# terraform plan -out="tfplan.out"
# terraform destroy
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#private-bucket-w-tags
resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-123123455745642342342"
  acl    = "private"

  tags = {
    Name        = "My first Terraform bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Cleber Gasparoto"
    CreatedAt   = "2021-01-14"
  }
}

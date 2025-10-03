# default = var optional

variable "environment" {
  type        = string
  description = ""
  #   default     = "dev"
}

variable "aws_region" {
  type        = string
  description = ""
  #   default     = "us-east-2"
}

variable "aws_profile" {
  type        = string
  description = ""
  #   default     = "mateus-cli"
}

variable "instance_ami" {
  type        = string
  description = ""
  #   default     = "ami-077b630ef539aa0b5"
}

variable "instance_type" {
  type        = string
  description = ""
  #   default     = "t3.micro"
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu"
    Project = "Curso AWS com Terraform"
    Owner   = "Mateus Alves"
  }
}

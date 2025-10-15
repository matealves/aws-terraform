terraform {
  required_version = "1.12.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.14.1"
    }
  }
}

resource "null_resource" "null" {
  triggers = {
    time = timestamp()
  }

  provisioner "local-exec" {
    command = "echo $FOO $BAR $BAZ $TIME >> env_vars.txt"

    environment = {
      FOO  = "bar"
      BAR  = 1
      BAZ  = "true"
      TIME = timestamp()
    }
  }

  provisioner "local-exec" {
    command = "rm -rf nodejs-app && mkdir nodejs-app && cd nodejs-app && npm init -y && npm install joi"
  }
}

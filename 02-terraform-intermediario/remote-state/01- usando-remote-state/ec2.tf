resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = {
    Name        = "Remote State"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

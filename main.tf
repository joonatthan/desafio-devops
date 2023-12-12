provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "desafio" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_par
  user_data     = var.user_data_script

  tags = {
    Name = "desafio-devops"
  }
}
provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "security_group_desafio" {
  name        = "security-group-desafio"
  description = "Security Group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_instance" "desafio" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_par
  user_data     = var.user_data_script

  tags = {
    Name = "desafio-devops"
  }

  vpc_security_group_ids = [ aws_security_group.security_group_desafio.id ]

}
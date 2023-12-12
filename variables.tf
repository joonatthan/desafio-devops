variable "aws_region" {
  description = "A região da AWS"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "ID da AMI"
  default     = "ami-0230bd60aa48260c6" #Amazon-Linux
}

variable "instance_type" {
  description = "Tipo de instância"
  default     = "t2.micro"
}

variable "key_par" {
  description = "Par de chaves"
  default     = "MyKey"
}

variable "user_data_script" {
  default = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y docker
              sudo service docker start
              sudo usermod -a -G docker ec2-user
              sudo yum install -y git
              git clone https://github.com/joonatthan/desafio-devops.git
              cd /desafio-devops/app/
              sudo docker build -t desafio .
              sudo docker run -d -p 3000:3000 desafio
            EOF
}
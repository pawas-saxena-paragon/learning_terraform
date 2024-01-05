terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami                    = "ami-0a0f1259dd1c90938"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.tf_security_group.id]

  tags = {
    Name = random_pet.name.id
  }
}

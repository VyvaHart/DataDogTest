terraform {
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_access_key
  region = var.aws_region
}

resource "aws_instance" "testInstance" {
  ami           = "ami-0669b163befffbdfc"
  instance_type = "t2.micro"

  tags = {
    Name = "justForTest"
  }
}
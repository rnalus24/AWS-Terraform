terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        #version = "value"
    }
  }

  required_version = "~> 2.0"
}

provider "aws" {
  profile = "default"
  region = "ap-southeast-1"
}

resource "aws_instance" "myec2vm" {
  ami = "ami-0ac9397cab55f5044"
  instance_type = "t2.micro"
}
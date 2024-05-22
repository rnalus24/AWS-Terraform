terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        #version = "~> 2.0"
    }
  }
  required_version = "~> 1.0"
}

provider "aws" {
  profile = "default"
  region = "ap-southeast-1"
}

provider "aws" {
  profile = "default"
  region = "us-east-1"
  alias = "us"
}

/*
resource "aws_vpc" "myvpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "myvpc1"
  }
}
*/

resource "aws_instance" "myec2vm" {
  ami = "ami-0bb84b8ffd87024d8" #ami-0ac9397cab55f5044 SG AMI IDs
  instance_type = "t2.micro"
  provider = aws.us
}

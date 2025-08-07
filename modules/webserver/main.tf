provider "aws" {
    region = "ap-south-1"
}

resource "aws_vpc" "main"{
    cidr_block = var.vpc_cidr
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr
  availability_zone = var.availability_zone
}

resource "aws_security_group" "allow_http_ssh" {
  name        = "allow_http_ssh"
  vpc_id      = aws_vpc.main.id

    ingress {
        from_port        = var.from_port
        to_port          = var.to_port
        protocol         = var.protocol
        cidr_blocks      = var.cidr_blocks
    }
}


resource "aws_instance" "web" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id              = aws_subnet.main.id
    vpc_security_group_ids = [aws_security_group.allow_http_ssh.id]
}
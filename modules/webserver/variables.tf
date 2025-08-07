variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "AZ where resources will be created"
  type        = string
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "env" {
  description = "Environment name (dev, staging, prod)"
  type        = string
}

variable "from_port" {
  description = "Security group ingress from_port"
  type        = number
}

variable "to_port" {
  description = "Security group ingress to_port"
  type        = number
}

variable "protocol" {
  description = "Security group protocol"
  type        = string
}

variable "cidr_blocks" {
  description = "Allowed CIDR blocks"
  type        = list(string)
}

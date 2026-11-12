variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-north-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "terraform-aws-ec2"
}

variable "ssh_cidr" {
  description = "Public IP allowed to connect through SSH"
  type        = string
}

variable "key_name" {
  description = "Name of the existing AWS EC2 key pair"
  type        = string
  default     = "cle-ec2"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "ssh_cidr" {
  description = "Public IP allowed to connect through SSH"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC IPv4 CIDR block"
  type        = string
  default     = "10.20.0.0/16"
}

variable "subnet_cidr" {
  description = "Public subnet IPv4 CIDR block"
  type        = string
  default     = "10.20.1.0/24"
}

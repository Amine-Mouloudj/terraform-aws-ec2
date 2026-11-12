output "vpc_id" {
  description = "Created VPC ID"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "Created public subnet ID"
  value       = aws_subnet.public.id
}

output "security_group_id" {
  description = "Created Security Group ID"
  value       = aws_security_group.ec2.id
}

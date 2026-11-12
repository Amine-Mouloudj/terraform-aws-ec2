output "instance_id" {
  description = "Created EC2 instance ID"
  value       = aws_instance.main.id
}

output "public_ip" {
  description = "EC2 public IPv4 address"
  value       = aws_instance.main.public_ip
}

output "vpc_id" {
  description = "VPC ID"
  value       = module.network.vpc_id
}

output "subnet_id" {
  description = "Public subnet ID"
  value       = module.network.subnet_id
}

output "security_group_id" {
  description = "Security Group ID"
  value       = module.network.security_group_id
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = module.ec2.instance_id
}

output "public_ip" {
  description = "EC2 public IP address"
  value       = module.ec2.public_ip
}

output "ssh_command" {
  description = "SSH command to connect to the EC2 instance"
  value       = "ssh -i ~/cle-ec2.pem ec2-user@${module.ec2.public_ip}"
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

module "network" {
  source = "./modules/network"

  project_name = var.project_name
  ssh_cidr     = var.ssh_cidr
}

module "ec2" {
  source = "./modules/ec2"

  project_name      = var.project_name
  ami_id            = data.aws_ami.amazon_linux.id
  instance_type     = var.instance_type
  key_name          = var.key_name
  subnet_id         = module.network.subnet_id
  security_group_id = module.network.security_group_id
}

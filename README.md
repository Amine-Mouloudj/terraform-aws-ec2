# Terraform AWS EC2 Infrastructure

## Project Overview

This project demonstrates the deployment of AWS infrastructure
using Terraform and Infrastructure as Code (IaC).

The infrastructure is organized into reusable Terraform modules
and follows basic AWS networking and security best practices.

## Architecture

The project provisions:

- An AWS VPC
- A public subnet
- An Internet Gateway
- A public route table
- A Security Group
- An Amazon EC2 instance running Amazon Linux 2023

## Technologies

- AWS
- Terraform
- Git
- GitHub
- Linux
- SSH

## Project Structure

```text
terraform-aws-ec2/
├── modules/
│   ├── network/
│   └── ec2/
├── main.tf
├── provider.tf
├── versions.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── .gitignore
└── README.md

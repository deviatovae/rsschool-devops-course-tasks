variable "aws_region" {
  type    = string
  default = "us-east-2"
}

variable "bucket_name" {
  type = string
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "List of public subnet CIDRs"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "List of private subnet CIDRs"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b"]
}

variable "key_name" {
  description = "SSH key name"
  type        = string
}

variable "ami" {
  description = "AMI ID"
  type        = string
}

variable "bastion_ip_cidr" {
  description = "IP-address for Bastion Host"
  type        = string
}

variable "k3s_token" {
  description = "K3s node token from server"
  type        = string
  sensitive   = true
}
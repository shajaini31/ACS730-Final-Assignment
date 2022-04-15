# Default tags
variable "default_tags" {
  default = {}
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}


# Name prefix
variable "prefix" {
  type        = string
  description = "Name prefix"
}

#Availability zones
variable "availability_zone" {
  default     = ["us-east-1b", "us-east-1c", "us-east-1d"]
  type        = list(string)
  description = "AWS regions"
}

# Provision public subnets in custom VPC
variable "public_cidr_blocks" {
  default     = ["10.100.0.0/24", "10.100.1.0/24", "10.100.2.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}

# Provision private subnets in custom VPC
variable "private_cidr_blocks" {
  default     = ["10.100.3.0/24", "10.100.4.0/24", "10.100.5.0/24"]
  type        = list(string)
  description = "Private Subnet CIDRs"
}

# VPC CIDR range
variable "vpc_cidr" {
  default     = "10.100.0.0/16"
  type        = string
  description = "VPC to host virtual maachines"
}

# Variable to signal the current environment 
variable "env" {
  default     = "dev"
  type        = string
  description = "Deployment Environment"
}


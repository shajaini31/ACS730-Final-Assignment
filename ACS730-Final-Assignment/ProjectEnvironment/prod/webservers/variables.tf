# Instance type
variable "instance_type" {
  default = {
    "dev"     = "t3.micro"
    "staging" = "t2.small"
    "nonprod" = "t2.medium"
  }
  description = "Type of the instance"
  type        = map(string)
}

# Variable to signal the current environment 
variable "env" {
  default     = "prod"
  type        = string
  description = "Deployment Environment"
}

# public IP
variable "public_ip" {
  type        = string
  default     = "18.205.29.13"
  description = "Public IP of Cloud9"
}

# Private IP
variable "private_ip" {
  type        = string
  default     = "172.31.87.4"
  description = "Private IP of Cloud9"
}






#Gneral Variables
variable "region" {
  description = "default region provider"
  type        = string
  default     = "ap-south-1"
}

#ec2 varicales

variable "ami" {
  description = "AMI tio use in ec2 instances"
  type        = string
  default     = "ami-03f4878755434977f"
}

variable "instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}

# S3 Variables

variable "bucket_prefix" {
  description = "prefix of s3 bucket for app data"
  type        = string
}

# Route 53 Variables

variable "domain" {
  description = "Domain for website"
  type        = string
}

# RDS Variables

variable "db_name" {
  description = "Name of DB"
  type        = string
}

variable "db_user" {
  description = "Username for DB"
  type        = string
}

variable "db_pass" {
  description = "Password for DB"
  type        = string
  sensitive   = true
}
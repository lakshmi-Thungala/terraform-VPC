# CIDR block for the VPC
variable "vpcid" {
  description = "CIDR block for the VPC"
  type        = string
}

# CIDR block for the private subnet
variable "priv_sub_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
}

# Availability zone for the private subnet
variable "priv_sub_az" {
  description = "Availability zone for the private subnet"
  type        = string
}

# CIDR block for the first public subnet
variable "pub_sub1_cidr" {
  description = "CIDR block for the first public subnet"
  type        = string
}

# Availability zone for the first public subnet
variable "pub_sub1_az" {
  description = "Availability zone for the first public subnet"
  type        = string
}

# CIDR block for the second public subnet
variable "pub_sub2_cidr" {
  description = "CIDR block for the second public subnet"
  type        = string
}

# Availability zone for the second public subnet
variable "pub_sub2_az" {
  description = "Availability zone for the second public subnet"
  type        = string
}

# Destination CIDR block for the route table
variable "rt_destination_cidr" {
  description = "Destination CIDR block for the route table"
  type        = string
}

# AWS region to deploy resources in
variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
}


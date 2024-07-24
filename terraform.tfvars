variable "vpcid" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "192.168.0.0/16"
}

variable "priv_sub_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "192.168.1.0/24"
}

variable "priv_sub_az" {
  description = "Availability zone for the private subnet"
  type        = string
  default     = "us-east-1a"
}

variable "pub_sub1_cidr" {
  description = "CIDR block for the first public subnet"
  type        = string
  default     = "192.168.2.0/24"
}

variable "pub_sub1_az" {
  description = "Availability zone for the first public subnet"
  type        = string
  default     = "us-east-1b"
}

variable "pub_sub2_cidr" {
  description = "CIDR block for the second public subnet"
  type        = string
  default     = "192.168.3.0/24"
}

variable "pub_sub2_az" {
  description = "Availability zone for the second public subnet"
  type        = string
  default     = "us-east-1a"
}

variable "rt_destination_cidr" {
  description = "Destination CIDR block for the route table"
  type        = string
  default     = "0.0.0.0/0"
}

variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

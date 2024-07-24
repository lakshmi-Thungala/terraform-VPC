# Create a VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpcid  # The CIDR block for the VPC

  tags = {
    Name = "my_vpc"  # Tag the VPC with a name.
  }
}

# Create an Internet Gateway for the VPC
resource "aws_internet_gateway" "my_gw" {
  vpc_id = aws_vpc.my_vpc.id  # The ID of the VPC where the Internet Gateway is created
}

# Allocate an Elastic IP for the NAT Gateway
resource "aws_eip" "ip" {}

# Create a NAT Gateway in the specified public subnet
resource "aws_nat_gateway" "my_nat" {
  allocation_id = aws_eip.ip.id  # The allocation ID of the Elastic IP
  subnet_id     = aws_subnet.my_pub_sub1.id  # The ID of the public subnet where the NAT Gateway is created
}

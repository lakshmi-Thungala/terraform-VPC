# Define the first public subnet
resource "aws_subnet" "my_pub_sub1" {
  # CIDR block for the subnet, defining the IP address range
  cidr_block = var.pub_sub1_cidr

  # Availability zone where this subnet will be created
  availability_zone = var.pub_sub1_az

  # The VPC to which this subnet belongs
  vpc_id = aws_vpc.my_vpc.id

  # Add tags or other configurations as needed
}

# Define the second public subnet
resource "aws_subnet" "my_pub_sub2" {
  # CIDR block for the subnet, defining the IP address range
  cidr_block = var.pub_sub2_cidr

  # Availability zone where this subnet will be created
  availability_zone = var.pub_sub2_az

  # The VPC to which this subnet belongs
  vpc_id = aws_vpc.my_vpc.id

  # Add tags or other configurations as needed
}

# Define the private subnet
resource "aws_subnet" "my_priv_sub" {
  # CIDR block for the subnet, defining the IP address range
  cidr_block = var.priv_sub_cidr

  # Availability zone where this subnet will be created
  availability_zone = var.priv_sub_az

  # The VPC to which this subnet belongs
  vpc_id = aws_vpc.my_vpc.id

  # Add tags or other configurations as needed
}

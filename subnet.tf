# Create the first public subnet
resource "aws_subnet" "my_pub_sub1" {
  cidr_block = var.pub_sub1_cidr  # The CIDR block for the first public subnet
  availability_zone = var.pub_sub1_az  # The availability zone for the first public subnet
  vpc_id = aws_vpc.my_vpc.id  # The ID of the VPC where the subnet is created
}

# Create the second public subnet
resource "aws_subnet" "my_pub_sub2" {
  cidr_block = var.pub_sub2_cidr  # The CIDR block for the second public subnet
  availability_zone = var.pub_sub2_az  # The availability zone for the second public subnet
  vpc_id = aws_vpc.my_vpc.id  # The ID of the VPC where the subnet is created
}

# Create the private subnet
resource "aws_subnet" "my_priv_sub" {
  cidr_block = var.priv_sub_cidr  # The CIDR block for the private subnet
  availability_zone = var.priv_sub_az  # The availability zone for the private subnet
  vpc_id = aws_vpc.my_vpc.id  # The ID of the VPC where the subnet is created
}

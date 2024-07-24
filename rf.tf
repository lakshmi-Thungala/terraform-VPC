# Create a private route table for the VPC
resource "aws_route_table" "my_priv_rt" {
    vpc_id = aws_vpc.my_vpc.id  # The VPC ID where the route table is created
}

# Create a public route table for the VPC
resource "aws_route_table" "my_pub_rt" {
    vpc_id = aws_vpc.my_vpc.id  # The VPC ID where the route table is created
}

# Associate the first public subnet with the public route table
resource "aws_route_table_association" "my-pub-sub1-rt-association" {
    route_table_id = aws_route_table.my_pub_rt.id  # The ID of the public route table
    subnet_id = aws_subnet.my_pub_sub1.id  # The ID of the first public subnet
}

# Associate the second public subnet with the public route table
resource "aws_route_table_association" "my-pub-sub2-rt-association" {
    route_table_id = aws_route_table.my_pub_rt.id  # The ID of the public route table
    subnet_id = aws_subnet.my_pub_sub2.id  # The ID of the second public subnet
}

# Associate the private subnet with the private route table
resource "aws_route_table_association" "my-priv-rt-association" {
    route_table_id = aws_route_table.my_priv_rt.id  # The ID of the private route table
    subnet_id = aws_subnet.my_priv_sub.id  # The ID of the private subnet
}

# Create a route in the public route table for outbound traffic to the Internet
resource "aws_route" "route-pub-rt" {
  route_table_id = aws_route_table.my_pub_rt.id  # The ID of the public route table
  destination_cidr_block = var.rt_destination_cidr  # The destination CIDR block
  gateway_id = aws_internet_gateway.my_gw.id  # The ID of the Internet Gateway
}

# Create a route in the private route table (e.g., for VPN or NAT)
resource "aws_route" "route-priv1-rt" {
  route_table_id = aws_route_table.my_priv_rt.id  # The ID of the private route table
  destination_cidr_block = var.rt_destination_cidr  # The destination CIDR block
  gateway_id = aws_internet_gateway.my_gw.id  # The ID of the gateway (Internet Gateway, NAT, etc.)
}

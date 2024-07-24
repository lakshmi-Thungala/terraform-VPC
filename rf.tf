# Define the private route table for managing routes for private subnets
resource "aws_route_table" "my_priv_rt" {
  vpc_id = aws_vpc.my_vpc.id

  # Add tags or other configurations as needed
}

# Define the public route table for managing routes for public subnets
resource "aws_route_table" "my_pub_rt" {
  vpc_id = aws_vpc.my_vpc.id

  # Add tags or other configurations as needed
}

# Associate the first public subnet with the public route table
resource "aws_route_table_association" "my-pub-sub1-rt-association" {
  route_table_id = aws_route_table.my_pub_rt.id
  subnet_id      = aws_subnet.my_pub_sub1.id
}

# Associate the second public subnet with the public route table
resource "aws_route_table_association" "my-pub-sub2-rt-association" {
  route_table_id = aws_route_table.my_pub_rt.id
  subnet_id      = aws_subnet.my_pub_sub2.id
}

# Associate the private subnet with the private route table
resource "aws_route_table_association" "my-priv-rt-association" {
  route_table_id = aws_route_table.my_priv_rt.id
  subnet_id      = aws_subnet.my_priv_sub.id
}

# Define a route in the public route table for internet access
resource "aws_route" "route-pub-rt" {
  route_table_id         = aws_route_table.my_pub_rt.id
  destination_cidr_block = var.rt_destination_cidr  # Destination IP range for the route, typically 0.0.0.0/0 for internet access
  gateway_id             = aws_internet_gateway.my_gw.id  # Internet Gateway ID to allow traffic to/from the internet
}

# Define a route in the private route table for outbound traffic (usually for NAT Gateway)
resource "aws_route" "route-priv1-rt" {
  route_table_id         = aws_route_table.my_priv_rt.id
  destination_cidr_block = var.rt_destination_cidr  # Destination IP range for the route, typically 0.0.0.0/0 for internet access
  gateway_id             = aws_internet_gateway.my_gw.id  # This should usually be a NAT Gateway ID for private subnets; verify if using NAT Gateway
}

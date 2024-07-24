# Output the ID of the created VPC
output "vpc_id" {
    value = aws_vpc.my_vpc.id
}

# Output the ID of the first public subnet
output "pub_subnet1" {
    value = aws_subnet.my_pub_sub1.id
}

# Output the ID of the second public subnet
output "pub_subnet2" {
    value = aws_subnet.my_pub_sub2.id
}

# Output the ID of the private subnet
output "priv_subnet" {
    value = aws_subnet.my_priv_sub.id
}

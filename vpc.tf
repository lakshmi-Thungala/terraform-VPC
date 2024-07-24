
resource "aws_vpc" "my_vpc" {
cidr_block = var.vpcid

tags = {
    Name = "my_vpc"
  }

}

resource "aws_internet_gateway" "my_gw" {
    vpc_id = aws_vpc.my_vpc.id

}

resource "aws_eip" "ip" {
}

resource "aws_nat_gateway" "my_nat" {
  allocation_id = aws_eip.ip.id
  subnet_id     = aws_subnet.my_pub_sub1.id

}

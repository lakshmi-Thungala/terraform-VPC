provider "aws"{
region = "us-east-1"
}

resource "aws_instance" "this" {
  ami                     = "ami-0195204d5dce06d99"
  instance_type           = "t2.micro"
}

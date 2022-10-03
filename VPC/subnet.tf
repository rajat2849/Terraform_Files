resource "aws_subnet" "subnet1" {
  vpc_id     = "${aws_vpc.VPC.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "My_Subnet"
  }
}
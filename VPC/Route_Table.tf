resource "aws_route_table" "Route_Table" {
  vpc_id = "${aws_vpc.VPC.id}"

  route {
    cidr_block = "10.0.0.0/24"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  route {
    ipv6_cidr_block        = "::/0"
  }

  tags = {
    Name = "Route_Table"
  }
}
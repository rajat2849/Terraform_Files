resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.VPC.id}"

  depends_on = [
    aws_vpc.VPC
  ]

  tags = {
    Name = "My_Internet_Getway"
  }
}
#security group
resource "aws_security_group" "tf-instance" {
  name        = "tf-intance"
  description = "ALLOW TLS INBOUND"

  dynamic "ingress" { #incoming rule
    for_each = "${var.ports}"
    iterator = port
    content {
      description = "TLS from VPC"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  egress { #outgoing rule
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = [ "::/0" ]
  }
}
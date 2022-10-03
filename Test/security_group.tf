# resource "aws_security_group" "sg_terraform" {
#     name = "sg_terraform"
#     description = "Allow SSH port"
#     ingress   {
#       cidr_blocks = [ "0.0.0.0/0" ]
#       description = "SSH port"
#       from_port = 22
#       to_port = 22
#       protocol = "tcp" 
#     } 

    # egress   {
    #   cidr_blocks = [ "0.0.0.0/0" ]
    #   ipv6_cidr_blocks =["::/0"]
    #   description = "outbound traffic"
    #   from_port = 0
    #   to_port = 0
    #   protocol = "-1"
    # } 
  
# }

resource "aws_security_group" "sg_loop" {
    name = "sg_loop"
    description = "Inbound/Outbound"

    dynamic "ingress" {
        for_each = [22,80,443,3306]
        iterator = port
        content {
            description = "Inbound rule"
            from_port = port.value
            to_port = port.value
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }

    egress   {
      cidr_blocks = [ "0.0.0.0/0" ]
      ipv6_cidr_blocks =["::/0"]
      description = "outbound traffic"
      from_port = 0
      to_port = 0
      protocol = "-1"
    } 
  
}
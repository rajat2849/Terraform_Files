resource "aws_instance" "Rajat"{
    ami = "ami-06489866022e12a14"
    instance_type = "t2.micro"
    key_name               = aws_key_pair.tf-key.key_name             #key-pair
    tags = {
      "Name" = "terraform_instance"
    }
} 
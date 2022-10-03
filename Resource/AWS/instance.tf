#create EC@ intance
resource "aws_instance" "tf-instance" {
  ami                    = "${var.image}"
  instance_type          = "${var.instance_type}"
  key_name               = aws_key_pair.tf-key.key_name             #key-pair
  vpc_security_group_ids = ["${aws_security_group.tf-instance.id}"] #security group
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name #IAM Role
    tags = {
    Name = "Terraform_Instance"
  }

  user_data = file("${path.module}/script.sh") #pre applied commond run just after craete intance
}
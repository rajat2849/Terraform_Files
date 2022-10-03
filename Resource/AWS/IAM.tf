# resource "aws_iam_role" "ec2_role" {
#   name = "ec2_role"

#   # Terraform's "jsonencode" function converts a
#   # Terraform expression result to valid JSON syntax.
#   assume_role_policy = jsonencode({
#     "Version": "2012-10-17",
#     "Statement": [
#         {
#             "Effect": "Allow",
#             "Principal": {
#                 "Service": "ec2.amazonaws.com"
#             },
#             "Action": "sts:AssumeRole"
#         }
#     ]
# })
# }

# resource "aws_iam_instance_profile" "ec2_profile" {
#     name = "ec2_profile"
#     role = aws_iam_role.ec2_role.name
# }

# resource "aws_iam_role_policy" "cloudwatch_policy" {
#     name = "cloudwatch_policy"
#     role = aws_iam_role.ec2_role.name
    
#     policy = jsonencode({
#     "Version": "2012-10-17",
#     "Statement": [
#         {
#             "Effect": "Allow",
#             "Action": [
#                 "cloudwatch:PutMetricData",
#                 "ec2:DescribeVolumes",
#                 "ec2:DescribeTags",
#                 "logs:PutLogEvents",
#                 "logs:DescribeLogStreams",
#                 "logs:DescribeLogGroups",
#                 "logs:CreateLogStream",
#                 "logs:CreateLogGroup"
#             ],
#             "Resource": "*"
#         },
#         {
#             "Effect": "Allow",
#             "Action": [
#                 "ssm:GetParameter"
#             ],
#             "Resource": "arn:aws:ssm:*:*:parameter/AmazonCloudWatch-*"
#         }
#     ]
# })
# }

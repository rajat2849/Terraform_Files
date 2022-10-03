# resource "aws_s3_bucket" "mysinghbucket" {
#     bucket = "mysinghbucket"

#     tags = {
#       "Name" = "mysinghbucket"
#       Environment = "Dev"
#     }
  
# }

# resource "aws_s3_bucket_acl" "example" {
#     bucket = aws_s3_bucket.mysinghbucket.id
#     acl = "private"
  
# }

# resource "aws_s3_bucket_object" "singleobject" {

#   bucket = aws_s3_bucket.mysinghbucket.id

#   key    = "CircleCI.pptx"

#   acl    = "private"  # or can be "public-read"

#   source = "/home/incaendo/Documents/CircleCI.pptx"

#   etag = filemd5("/home/incaendo/Documents/CircleCI.pptx")

# }

# resource "aws_s3_bucket_object" "multipleobject" {
#     bucket = aws_s3_bucket.mysinghbucket.id
#     for_each = fileset("/home/incaendo/New_Terraform/", "**")
#     key = each.value
#     source = "/home/incaendo/New_Terraform/${each.value}"
#     etag = filemd5("/home/incaendo/New_Terraform/${each.value}")
# }
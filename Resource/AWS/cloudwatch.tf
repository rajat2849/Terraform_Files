# resource "aws_cloudwatch_metric_alarm" "ec2_cpu" {
#      alarm_name                = "cpu-utilization"
#      comparison_operator       = "GreaterThanOrEqualToThreshold"
#      evaluation_periods        = "2"
#      metric_name               = "CPUUtilization"
#      namespace                 = "AWS/EC2"
#      period                    = "120" #seconds
#      statistic                 = "Average"
#      threshold                 = "80"
#      alarm_description         = "This metric monitors ec2 cpu utilization"
#      insufficient_data_actions = []
# dimensions = {
#        InstanceId = aws_instance.tf-instance.id
#      }
# }

# resource "aws_cloudwatch_log_group" "EC2_logGroup" {
#   name = "EC2_logGroup"
#   retention_in_days = 30
  
# }
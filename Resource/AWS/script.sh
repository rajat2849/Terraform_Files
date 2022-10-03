#!/bin/bash
sudo yum update -y
sudo yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
sudo systemctl status amazon-ssm-agent
sudo yum install awslogs -y
sudo service awslogsd start
sudo systemctl enable awslogsd
sudo yum install tree -y
sudo mkdir /home/ec2-user/data

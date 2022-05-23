provider "aws" {
  region = var.aws_region
  }

resource "aws_instance" "terraformInstance" {
ami           = var.ami_id
key_name = var.key_name
instance_type = var.instance_type
security_groups = [aws_security_group.Ec2_security_group.name]
iam_instance_profile = var.iam_instance_profile
user_data     = <<EOF
#!/bin/bash -xe
exec 1> /var/log/test.log
exec 2>&1
cd /home/ec2-user/
#aws s3 cp s3://terraform-practice-layer/requirement.txt requirement.txt
pip3 install boto3
aws s3 cp s3://terraform-practice-layer/decode.py decode.py

EOF
  
  tags= {
    Name = var.tag_name
  }
}

resource "aws_default_vpc" "main" {

  tags = {
    Name = "Default VPC"
  }
}
##Ec2 instance policy

resource "aws_iam_policy" "instance_policy"{
    policy = file("modules/iam/config/ec2_policy.json")
}

resource "aws_iam_policy" "s3_bucket_ec2_policy"{
    policy = file("modules/iam/config/s3_bucket_policy.json")  
}

#Iam role for Ec2 instances
resource "aws_iam_role" "instance_iam_role"{
    assume_role_policy = file("modules/iam/config/ec2_role.json")  
}

resource "aws_iam_policy_attachment" "ec2_s3_policy_attachment"{
    name = "ec2_role_policy_attachment"
    roles = [aws_iam_role.instance_iam_role.name]
    policy_arn = aws_iam_policy.s3_bucket_ec2_policy.arn
}

resource "aws_iam_instance_profile" "ec2_profile"{
    name = "ec2_profile"
    role = aws_iam_role.instance_iam_role.name
}


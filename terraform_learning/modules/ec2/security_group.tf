resource "aws_security_group" "Ec2_security_group" {
  name        = "Ec2_security_group"
  description = "Ec2_security_group inbound traffic"
  vpc_id      = aws_default_vpc.main.id

  ingress {
    description      = "inbound rules from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [aws_default_vpc.main.cidr_block]
    
  }

  ingress {
    description      = "inbound rules from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [aws_default_vpc.main.cidr_block]
    
  }

  ingress {
    description      = "inbound rules from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [aws_default_vpc.main.cidr_block]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "Ec2_security_group"
    instance_name = "terraformInstance"
  }
}

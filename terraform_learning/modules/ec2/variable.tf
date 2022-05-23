variable "aws_region" {
       description = "our account region" 
       default     = "us-east-2" 
}

variable "key_name" { 
    description = " SSH keys to connect to ec2 instance" 
    default     =  "test" 
}

variable "instance_type" { 
    description = "instance type for ec2" 
    default     =  "t2.micro" 
}


variable "tag_name" { 
    description = "Tag Name of for Ec2 instance" 
    default     = "my-ec2-instance" 
} 
variable "ami_id" { 
    description = "Ami id" 
    default     = "ami-0fa49cc9dc8d62c84" 
}
variable "vpc" {
    description =" my VPC"
    default ="vpc-02a4f4f492bc97882"
}
variable "iam_instance_profile"{
}

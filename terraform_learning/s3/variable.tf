variable "aws_region" {
    default     = "us-east-2"
}
variable "bucket_prefix" {
    default     = "my-s3bucket-landing-layer"
}
variable "tags" {
    type        = map
    description = "(Optional) A mapping of tags to assign to the bucket."
    default     = {
        environment = "DEV"
        terraform   = "true"
    }
}
variable "versioning" {
    description = "(Optional) A state of versioning."
    default     = true
}
variable "acl" {
    type        = string
    description = " Defaults to private "
    default     = "private"
}

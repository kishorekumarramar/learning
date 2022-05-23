provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "my-s3-bucket" {
  bucket = var.bucket_prefix
      
  tags = var.tags
}

resource "aws_s3_bucket_acl" "acl"{
  bucket = aws_s3_bucket.my-s3-bucket.id
acl = var.acl
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.my-s3-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
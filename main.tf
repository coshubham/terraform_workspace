provider "aws" {
  region = "ap-south-1"
}

locals {
  env = terraform.workspace
}

resource "aws_s3_bucket" "example" {
  bucket = "my-shubham-${local.env}"
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.example.bucket

}
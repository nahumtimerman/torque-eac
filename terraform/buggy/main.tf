terraform {
  required_version = ">= 1.0.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "broken" {
  # Invalid argument: `bucket` name cannot contain uppercase letters
  bucket = "MyInvalidBucketName"
}


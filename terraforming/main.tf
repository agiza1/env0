
     provider "aws" {
       region = "us-west-2" 
     }

     resource "aws_s3_bucket" "env0-buckets" {
      bucket = "${var.bucket_name}"
     }
     variable "region" {}
     variable "bucket_name" {}


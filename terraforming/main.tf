
     provider "aws" {
       region = var.region
     }

     resource "aws_s3_bucket" "s3_bucket" {
      bucket = "${var.bucket_name}"
      
     }

     variable "region" {}
     variable "bucket_name" {}


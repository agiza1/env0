
     provider "aws" {
       region = "us-west-2" 
     }

     resource "aws_s3_bucket" "env0-bucket" {
      bucket = "${var.bucket_name}"
      tags {
         Name = "${var.bucket_name}"
         env  = "${var.env}"
      }
     }

     variable "region" {}
     variable "bucket_name" {}


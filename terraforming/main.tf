
     provider "aws" {
       region = "us-west-2"
     }

     resource "aws_s3_bucket" "my_bucket" {
       bucket = var.bucket_name

       lifecycle_rule {
         enabled = true
         expiration {
           days = 1
         }
       }
     }

     variable "region" {}
     variable "bucket_name" {}

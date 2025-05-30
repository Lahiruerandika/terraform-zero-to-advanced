terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">5.37.0"
    }

  }
}

provider "aws" {
  region = "us-east-1" # You can change this to your preferred region
}

#Actively managed by us
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-sample-bucket"
}

#Managed somewhere else, we just want to use in our project
data "aws_s3_bucket" "my_external_bucket" {
  bucket = "not-managed-by-us"
}

variable "bucket_name" {
  type        = string
  description = "My variable used to set bucket name"
  default     = "my_default_bucket_name"
}

output "bucket_id" {
  value = aws_s3_bucket.my_bucket.id
}

locals {
  local_example = "This is a local variable"
}

#If there any related modules/dependencies available, use the relavent file
# module "my_madule" {
#   source = "./module-example"
# }
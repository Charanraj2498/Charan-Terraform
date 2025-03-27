terraform {
  backend "s3" {
    bucket         = "stagging-charan-s3ck"    # State bucket name
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
 }
# Define provider
provider "aws" {
  region = var.aws_region
}

# Get current workspace name
locals {
  bucket_name    = "${terraform.workspace}-charan-s3ck"
  instance_type  = lookup(var.instance_type_map, terraform.workspace, "t2.micro")
  instance_name  = "${terraform.workspace}-charan-instance"
}
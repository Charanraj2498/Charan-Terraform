# Create S3 bucket
resource "aws_s3_bucket" "charan-s3ck" {
  bucket = local.bucket_name

  tags = {
    Name        = local.bucket_name
    Environment = terraform.workspace
  }
}

# Create EC2 instance
resource "aws_instance" "charan-instance" {
  ami           = "ami-084568db4383264d4" # Ubuntu 22.04 AMI in ap-south-1
  instance_type = local.instance_type

  tags = {
    Name        = local.instance_name
    Environment = terraform.workspace
  }
}
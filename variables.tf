# Define AWS region
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

# Define instance types per workspace
variable "instance_type_map" {
  description = "Instance types for each workspace"
  type        = map(string)
  default = {
    "default" = "t2.micro"
    "dev"     = "t2.micro"
    "staging" = "t3.small"
    "prod"    = "t3.medium"
  }
}
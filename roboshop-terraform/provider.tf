# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "roboshop"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
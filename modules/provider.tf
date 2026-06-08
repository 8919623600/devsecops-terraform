# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "roboshop-terraform"
    key    = "statefile/terraform.tfstate"
    region = "us-east-1"
  }
}
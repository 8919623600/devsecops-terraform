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

data "aws_ami" "latest" {
    most_recent = true
    
    filter {
        name   = "name"
        values = ["DevOps-LabImage-RHEL9"] # Name of the AMI, you can find it in the AWS console or by using AWS CLI
    }
        
    owners = ["355449129696"] # Owner ID of the AMI, you can find it in the AWS console or by using AWS CLI
}

resource "aws_instance" "main" {

    ami = data.aws_ami.latest.id
    instance_type  = var.instance_type

    tags = {
        Name = "terraform-instance"
    }
}
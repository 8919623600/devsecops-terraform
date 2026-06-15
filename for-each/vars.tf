variable "components" {
  description = "Map of components to create EC2 instances for"
  default = {
    frontend = {
      instance_type = "t3.micro"
      ami_id       = "ami-0fcc78c828f981df2"
    }
    catalogue = {
      instance_type = "t3.micro"
      ami_id       = "ami-0fcc78c828f981df2"
    }
    shipping = {
      instance_type = "t3.micro"
      ami_id       = "ami-0fcc78c828f981df2"
    }
    payment = {
      instance_type = "t3.micro"
      ami_id       = "ami-0fcc78c828f981df2"
    }
    cart = {
      instance_type = "t3.micro"
      ami_id       = "ami-0fcc78c828f981df2"
    }
  }
}

variable "ami_id" {
    default = "ami-0fcc78c828f981df2"
}

variable "component" {
    default = ["frontend"]
}

variable "instance_type" {
    default = "t3.micro"
}
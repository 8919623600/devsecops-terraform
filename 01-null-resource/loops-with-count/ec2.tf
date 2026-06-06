resource "aws_instance" "main" {
    count = 3
    ami = "ami-0fcc78c828f981df2"
    instance_type = "t3.micro"


tags = {
    Name = "aws-ec2-${count.index}"
}
}
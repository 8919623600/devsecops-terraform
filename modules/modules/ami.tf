data "aws_ami" "latest" {
    most_recent = true
    
    filter {
        name   = "name"
        values = ["${var.ami_name}"] # Name of the AMI, you can find it in the AWS console or by using AWS CLI
    }
        
    owners = ["355449129696"] # Owner ID of the AMI, you can find it in the AWS console or by using AWS CLI
}
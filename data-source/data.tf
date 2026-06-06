data "aws_security_group" "selected" {
  name = "Devops-learning-SG"
}

output "aws_security_group" {
    value = data.aws_security_group.selected.id
}
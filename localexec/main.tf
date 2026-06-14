resource "null_resource" "main" {
    provisioner "local_exec"
     command = "echo Example to run on TESTING machine && touch /tmp/example.txt"
}
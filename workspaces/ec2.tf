resource "aws_instance" "ec2" {

    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-055eae504b31da7bd"]
    instance_type = lookup(var.instance_type, terraform.workspace)

    tags = {
        Name = "ec2"
    }
}
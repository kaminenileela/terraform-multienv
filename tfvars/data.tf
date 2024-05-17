data "aws_ami" "aws_info" {

    most_recent = true 
    owners = ["973714476881"]

    filter {

        name = "name"
        values = ["RHEL-9-DevOps-Practice"]

    }

    filter {
        name = "root-device-name"
        values = ["/dev/sda1"]
    }

    filter {
        name = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

}
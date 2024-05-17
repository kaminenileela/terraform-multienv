resource "aws_instance" "expense" {
    for_each = var.instance_type
    ami = data.aws_ami.aws_info.id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = each.value

        tags =  merge( 

            var.common_tags,
            {
            Name = "${each.key}"
            module = "${each.key}"
            Environment = var.environment
        })
}


resource "aws_security_group" "allow_ssh" {

    name = "ssh"
    description = "allow ssh access"

        ingress {

            from_port = var.port
            to_port = var.port
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        }

        egress {

            from_port = var.port
            to_port = var.port
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        }

        tags = {
            Name = "ssh"
            Createdby = "Leela"
        }

}
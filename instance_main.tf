# This is for creating a bacis instance
resource "aws_instance" "my_instance" {
    region = var.region
    ami = var.my_ami
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = ["aws_security_group.my_sg.name"]
    tags = {
        Name = "MyInstance"
    }

}
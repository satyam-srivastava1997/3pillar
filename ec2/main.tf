resource "aws_instance" "web"{
ami = "ami-06b263d6ceff0b3dd"
instance_type = "${var.instance_type}"
subnet_id     = "${var.subnet_id}"
vpc_security_group_ids = [var.security_group]

 tags = {
    Name = "SATYAM"
  }
}


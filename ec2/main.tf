resource "aws_instance" "web"{
ami = "ami-06b263d6ceff0b3dd"
count         = "${var.ec2_count}"
instance_type = "${var.instance_type}"
subnet_id     = "${var.subnet_id}"

 tags = {
    Name = "SATYAM"
  }
}


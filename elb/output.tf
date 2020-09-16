output "name" {
  description = "The name of the created ELB."
  value = aws_elb.classic_elb.name
}

output "elb_id"{

value = aws_elb.classic_elb.id
}

output "dns_name" {
  description = "The DNS name of the created ELB."
  value = aws_elb.classic_elb.dns_name
}

resource "aws_lb" "app_elb" {
  name               = var.elb_name
  internal           = false
  load_balancer_type = "application"
  subnets            = var.subnet_id
  vpc_id             = var.vpc_id


 target_groups = [
    {
      name_prefix      = "pref-"
      backend_protocol = "HTTP"
      backend_port     = 80
      target_type      = "instance"
    }
  ]

 http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

  enable_deletion_protection = true

  


  tags = {
    Environment = "production"
  }
}

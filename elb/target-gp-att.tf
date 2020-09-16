resource "aws_lb_target_group_attachment" "main-alb-target-group-att" {
  target_group_arn = aws_lb_target_group.main-target-group.arn
  target_id        = var.instance_id
  port             = 80
}


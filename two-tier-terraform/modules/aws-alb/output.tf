output "alb-sg-id" {
  value = aws_security_group.web-alb-sg.id
}

output "aws_lb_target_group_tg" {
  value = aws_lb_target_group.web-tg.arn
}
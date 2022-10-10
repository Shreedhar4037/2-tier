# --- loadbalancing/outputs.tf ---

output "elb" {
  value = aws_lb.w21_project_lb.id
}

output "lb_tg" {
  value = aws_lb_target_group.w21_project_tg.arn
}

output "lb_dns" {
  value = aws_lb.w21_project_lb.dns_name
}

# --- compute/outputs.tf ---

output "database_asg" {
  value = aws_autoscaling_group.w21_project_database
}

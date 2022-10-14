# --- root/outputs.tf ---

output "vpc_id" {
  value = aws_vpc.w21_project_vpc.id
}

output "public_sg" {
  value = aws_security_group.w21_project_public_sg.id
}

output "private_sg" {
  value = aws_security_group.w21_project_private_sg.id
}

output "web_sg" {
  value = aws_security_group.w21_project_web_sg.id
}

output "private_subnet" {
  value = aws_subnet.w21_project_private_subnet[*].id
}

output "public_subnet" {
  value = aws_subnet.w21_project_public_subnet[*].id
}

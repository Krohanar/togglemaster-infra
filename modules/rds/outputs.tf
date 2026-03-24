output "db_instance_endpoint" {
  description = "RDS endpoint"
  value       = aws_db_instance.this.address
}

output "db_instance_port" {
  description = "RDS port"
  value       = aws_db_instance.this.port
}

output "db_instance_name" {
  description = "RDS database name"
  value       = aws_db_instance.this.db_name
}

output "db_instance_username" {
  description = "RDS master username"
  value       = aws_db_instance.this.username
}

output "security_group_id" {
  description = "RDS security group ID"
  value       = aws_security_group.this.id
}
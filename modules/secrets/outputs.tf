output "auth_service_secret_name" {
  description = "Secrets Manager secret name for auth-service"
  value       = aws_secretsmanager_secret.auth_service.name
}
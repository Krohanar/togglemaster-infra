resource "aws_secretsmanager_secret" "auth_service" {
  name        = "${var.project_name}/${var.environment}/auth-service"
  description = "Secrets for auth-service"

  tags = {
    Name = "${var.project_name}-${var.environment}-auth-service-secret"
  }
}

resource "aws_secretsmanager_secret_version" "auth_service" {
  secret_id = aws_secretsmanager_secret.auth_service.id

  secret_string = jsonencode({
    MASTER_KEY   = var.master_key
    DATABASE_URL = "postgres://${var.db_username}:${urlencode(var.db_password)}@${var.rds_endpoint}:5432/${var.db_name}?sslmode=require"
  })
}
output "vpc_id" {
  description = "VPC ID for dev environment"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet IDs for dev environment"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "Private subnet IDs for dev environment"
  value       = module.vpc.private_subnet_ids
}

output "nat_gateway_id" {
  description = "NAT Gateway ID for dev environment"
  value       = module.vpc.nat_gateway_id
}

output "ecr_repository_urls" {
  description = "ECR repository URLs for dev environment"
  value       = module.ecr.repository_urls
}

output "eks_cluster_name" {
  description = "EKS cluster name for dev environment"
  value       = module.eks.cluster_name
}

output "eks_cluster_endpoint" {
  description = "EKS cluster endpoint for dev environment"
  value       = module.eks.cluster_endpoint
}

output "rds_endpoint" {
  description = "RDS endpoint for dev environment"
  value       = module.rds.db_instance_endpoint
}

output "rds_port" {
  description = "RDS port for dev environment"
  value       = module.rds.db_instance_port
}

output "auth_service_secret_name" {
  description = "Secrets Manager secret name for auth-service"
  value       = module.secrets.auth_service_secret_name
}

output "sqs_queue_url" {
  value = module.sqs.queue_url
}

output "sqs_queue_arn" {
  value = module.sqs.queue_arn
}

output "dynamodb_table_name" {
  value = module.dynamodb.table_name
}

output "dynamodb_table_arn" {
  value = module.dynamodb.table_arn
}

output "redis_address" {
  value = module.elasticache.redis_address
}

output "redis_port" {
  value = module.elasticache.redis_port
}
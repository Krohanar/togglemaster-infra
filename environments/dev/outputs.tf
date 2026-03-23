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
variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
}

variable "project_name" {
  description = "Project name prefix for resources"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDRs"
  type        = list(string)
}

variable "availability_zones" {
  description = "Availability zones to use"
  type        = list(string)
}

variable "ecr_repository_names" {
  description = "List of ECR repositories to create"
  type        = list(string)
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "node_instance_types" {
  description = "Node group instance types"
  type        = list(string)
}

variable "desired_size" {
  description = "Desired node group size"
  type        = number
}

variable "min_size" {
  description = "Minimum node group size"
  type        = number
}

variable "max_size" {
  description = "Maximum node group size"
  type        = number
}
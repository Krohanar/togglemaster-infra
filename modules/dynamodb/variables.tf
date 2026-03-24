variable "project_name" {
  description = "Project name prefix"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "table_name" {
  description = "DynamoDB table base name"
  type        = string
}

variable "hash_key" {
  description = "Partition key name"
  type        = string
}

variable "hash_key_type" {
  description = "Partition key type"
  type        = string
  default     = "S"
}
variable "project_name" {
  description = "Project name prefix"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "queue_name" {
  description = "Base queue name"
  type        = string
}

variable "visibility_timeout_seconds" {
  description = "Visibility timeout in seconds"
  type        = number
  default     = 60
}

variable "message_retention_seconds" {
  description = "Message retention in seconds"
  type        = number
  default     = 345600
}

variable "receive_wait_time_seconds" {
  description = "Long polling wait time in seconds"
  type        = number
  default     = 10
}

variable "create_dlq" {
  description = "Whether to create a dead-letter queue"
  type        = bool
  default     = true
}

variable "max_receive_count" {
  description = "How many receives before moving to DLQ"
  type        = number
  default     = 5
}
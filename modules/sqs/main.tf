resource "aws_sqs_queue" "dlq" {
  count = var.create_dlq ? 1 : 0

  name                      = "${var.project_name}-${var.environment}-${var.queue_name}-dlq"
  message_retention_seconds = var.message_retention_seconds

  tags = {
    Name = "${var.project_name}-${var.environment}-${var.queue_name}-dlq"
  }
}

resource "aws_sqs_queue" "this" {
  name                       = "${var.project_name}-${var.environment}-${var.queue_name}"
  visibility_timeout_seconds = var.visibility_timeout_seconds
  message_retention_seconds  = var.message_retention_seconds
  receive_wait_time_seconds  = var.receive_wait_time_seconds

  redrive_policy = var.create_dlq ? jsonencode({
    deadLetterTargetArn = aws_sqs_queue.dlq[0].arn
    maxReceiveCount     = var.max_receive_count
  }) : null

  tags = {
    Name = "${var.project_name}-${var.environment}-${var.queue_name}"
  }
}
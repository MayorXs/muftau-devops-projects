variable "lambda_function_name" {
  description = "Name of the Lambda function to monitor"
  type        = string
}

variable "sns_topic_arns" {
  description = "List of SNS topic ARNs to notify when alarms trigger"
  type        = list(string)
  default     = []
}

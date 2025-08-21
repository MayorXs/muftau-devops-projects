output "error_alarm_arn" {
  description = "ARN of the Lambda errors alarm"
  value       = aws_cloudwatch_metric_alarm.lambda_errors.arn
}

output "throttle_alarm_arn" {
  description = "ARN of the Lambda throttles alarm"
  value       = aws_cloudwatch_metric_alarm.lambda_throttles.arn
}

output "duration_alarm_arn" {
  description = "ARN of the Lambda duration alarm"
  value       = aws_cloudwatch_metric_alarm.lambda_duration.arn
}

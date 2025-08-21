resource "aws_cloudwatch_metric_alarm" "lambda_errors" {
  alarm_name                = "${var.lambda_function_name}-errors-alarm"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = 2
  metric_name               = "Errors"
  namespace                 = "AWS/Lambda"
  period                    = 60
  statistic                 = "Sum"
  threshold                 = 1

  dimensions = {
    FunctionName = var.lambda_function_name
  }

  alarm_description = "Trigger alarm when Lambda function has errors"
  actions_enabled   = true

  alarm_actions = var.sns_topic_arns
}

resource "aws_cloudwatch_metric_alarm" "lambda_throttles" {
  alarm_name                = "${var.lambda_function_name}-throttles-alarm"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = 2
  metric_name               = "Throttles"
  namespace                 = "AWS/Lambda"
  period                    = 60
  statistic                 = "Sum"
  threshold                 = 1

  dimensions = {
    FunctionName = var.lambda_function_name
  }

  alarm_description = "Trigger alarm when Lambda function is throttled"
  actions_enabled   = true

  alarm_actions = var.sns_topic_arns
}

resource "aws_cloudwatch_metric_alarm" "lambda_duration" {
  alarm_name                = "${var.lambda_function_name}-duration-alarm"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = 2
  metric_name               = "Duration"
  namespace                 = "AWS/Lambda"
  period                    = 60
  statistic                 = "Average"
  threshold                 = 5000  # 5 seconds

  dimensions = {
    FunctionName = var.lambda_function_name
  }

  alarm_description = "Trigger alarm when Lambda function duration exceeds 5 seconds"
  actions_enabled   = true

  alarm_actions = var.sns_topic_arns
}

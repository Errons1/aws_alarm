resource "aws_cloudwatch_metric_alarm" "threshold" {
  alarm_name  = "${var.prefix}-${var.alarm_name}"
  namespace   = var.alarm_namespace
  metric_name = var.metric_name

  comparison_operator = var.comparison_operator
  threshold           = var.threshold
  evaluation_periods  = var.evaluation_periods
  period              = var.period
  statistic           = var.statistic

  alarm_description = "This alarm goes off as soon as X GET request goes over 5 pre minutes "
  alarm_actions     = [aws_sns_topic.user_updates.arn]
}

resource "aws_sns_topic" "user_updates" {
  name = "${var.prefix}-${var.aws_sns_topic_name}"
}

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  topic_arn = aws_sns_topic.user_updates.arn
  protocol  = var.protocol
  endpoint  = var.endpoint
}
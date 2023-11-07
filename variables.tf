# Vars for aws_cloudwatch_metric_alarm
variable "prefix" {
  default = "prefix"
  type = string
}

variable "alarm_name" {
  default = "alarm-name"
  type = string
}

variable "alarm_namespace" {
  type = string
}

variable "metric_name" {
  type = string
}

variable "comparison_operator" {
  default = "GreaterThanThreshold"
  type = string
}

variable "threshold" {
  default = "10"
  type = string
}

variable "evaluation_periods" {
  default = "2"
  type = string
}

variable "period" {
  default = "60"
  type = string
}

variable "statistic" {
  default = "Sum"
  type = string
}

variable "alarm_description" {
  default = "This alarm goes off when data goes over 10values 2 times within 60 seconds"
  type = string
}

# Vars for aws_sns_topic
variable "aws_sns_topic_name" {
  default = "alarm-topic"
  type = string
}

# Vars for aws_sns_topic_subscription
variable "protocol" {
  type = string
}

variable "endpoint" {
  type = string
}



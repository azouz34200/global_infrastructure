resource "aws_sns_topic" "global_infra" {
  name  = "global_infra-topic-${var.env}"
  count = "${var.sns_enable}"
}

resource "aws_sns_topic_subscription" "global_infra_subscription" {
  topic_arn              = "${aws_sns_topic.global_infra.arn}"
  protocol               = "https"
  endpoint               = "${var.endpoint_slack}"
  endpoint_auto_confirms = true
  count                  = "${var.sns_enable}"
}

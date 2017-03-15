resource "aws_iam_policy_attachment" "AmazonRDSFullAccess-policy-attachment" {
  name       = "AmazonRDSFullAccess-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
  groups     = ["${var.group-name}"]
  users      = []
  roles      = []
  depends_on = ["aws_iam_group.infra_automation"]
}

resource "aws_iam_policy_attachment" "AmazonEC2FullAccess-policy-attachment" {
  name       = "AmazonEC2FullAccess-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  groups     = ["${var.group-name}"]
  users      = []
  roles      = []
  depends_on = ["aws_iam_group.infra_automation"]
}

resource "aws_iam_policy_attachment" "AutoScalingFullAccess-policy-attachment" {
  name       = "AutoScalingFullAccess-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/AutoScalingFullAccess"
  groups     = ["${var.group-name}"]
  users      = []
  roles      = []
  depends_on = ["aws_iam_group.infra_automation"]
}

resource "aws_iam_policy_attachment" "AmazonRoute53DomainsFullAccess-policy-attachment" {
  name       = "AmazonRoute53DomainsFullAccess-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/AmazonRoute53DomainsFullAccess"
  groups     = ["${var.group-name}"]
  users      = []
  roles      = []
  depends_on = ["aws_iam_group.infra_automation"]
}

resource "aws_iam_policy_attachment" "AmazonVPCFullAccess-policy-attachment" {
  name       = "AmazonVPCFullAccess-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
  groups     = ["${var.group-name}"]
  users      = []
  roles      = []
  depends_on = ["aws_iam_group.infra_automation"]
}

resource "aws_iam_policy_attachment" "IAMReadOnlyAccess-policy-attachment" {
  name       = "IAMReadOnlyAccess-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
  groups     = ["${var.group-name}"]
  users      = []
  roles      = []
  depends_on = ["aws_iam_group.infra_automation"]
}

resource "aws_iam_policy_attachment" "AmazonESFullAccess-policy-attachment" {
  name       = "AmazonESFullAccess-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/AmazonESFullAccess"
  groups     = ["${var.group-name}"]
  users      = []
  roles      = []
  depends_on = ["aws_iam_group.infra_automation"]
}

resource "aws_iam_policy_attachment" "AWSCertificateManagerFullAccess-policy-attachment" {
  name       = "AWSCertificateManagerFullAccess-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/AWSCertificateManagerFullAccess"
  groups     = ["${var.group-name}"]
  users      = []
  roles      = []
  depends_on = ["aws_iam_group.infra_automation"]
}

resource "aws_iam_policy" "opsidian_readonly" {
  name = "opsidian_ReadOnly"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "autoscaling:Describe*",
        "cloudtrail:DescribeTrails",
        "cloudtrail:GetTrailStatus",
        "cloudwatch:Describe*",
        "cloudwatch:Get*",
        "cloudwatch:List*",
        "ec2:Describe*",
        "ec2:Get*",
        "ecs:Describe*",
        "ecs:List*",
        "elasticache:Describe*",
        "elasticache:List*",
        "elasticloadbalancing:Describe*",
        "iam:Get*",
        "iam:List*",
        "kinesis:Get*",
        "kinesis:List*",
        "kinesis:Describe*",
        "rds:Describe*",
        "rds:List*",
        "ses:Get*",
        "ses:List*",
        "sns:List*",
        "sns:Publish",
        "sqs:GetQueueAttributes",
        "sqs:ListQueues",
        "sqs:ReceiveMessage"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_policy_attachment" "opsidian" {
  name       = "opsidian-readonly-access"
  users      = ["opsidian"]
  policy_arn = "${aws_iam_policy.opsidian_readonly.arn}"
}

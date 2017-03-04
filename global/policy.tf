resource "aws_iam_policy_attachment" "AmazonRDSFullAccess-policy-attachment" {
    name       = "AmazonRDSFullAccess-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
    groups     = ["${var.group-name}"]
    users      = []
    roles      = []
}

resource "aws_iam_policy_attachment" "AmazonEC2FullAccess-policy-attachment" {
    name       = "AmazonEC2FullAccess-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
    groups     = ["${var.group-name}"]
    users      = []
    roles      = []
}

resource "aws_iam_policy_attachment" "AutoScalingFullAccess-policy-attachment" {
    name       = "AutoScalingFullAccess-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/AutoScalingFullAccess"
    groups     = ["${var.group-name}"]
    users      = []
    roles      = []
}

resource "aws_iam_policy_attachment" "AmazonRoute53DomainsFullAccess-policy-attachment" {
    name       = "AmazonRoute53DomainsFullAccess-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/AmazonRoute53DomainsFullAccess"
    groups     = ["${var.group-name}"]
    users      = []
    roles      = []
}

resource "aws_iam_policy_attachment" "AdministratorAccess-policy-attachment" {
    name       = "AdministratorAccess-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
    groups     = ["admin"]
    users      = []
    roles      = []
}

resource "aws_iam_policy_attachment" "AmazonVPCFullAccess-policy-attachment" {
    name       = "AmazonVPCFullAccess-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
    groups     = ["${var.group-name}"]
    users      = []
    roles      = []
}

resource "aws_iam_policy_attachment" "IAMReadOnlyAccess-policy-attachment" {
    name       = "IAMReadOnlyAccess-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
    groups     = ["${var.group-name}"]
    users      = []
    roles      = []
}

resource "aws_iam_policy_attachment" "AmazonESFullAccess-policy-attachment" {
    name       = "AmazonESFullAccess-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/AmazonESFullAccess"
    groups     = ["${var.group-name}"]
    users      = []
    roles      = []
}

resource "aws_iam_policy_attachment" "AWSCertificateManagerFullAccess-policy-attachment" {
    name       = "AWSCertificateManagerFullAccess-policy-attachment"
    policy_arn = "arn:aws:iam::aws:policy/AWSCertificateManagerFullAccess"
    groups     = ["${var.group-name}"]
    users      = []
    roles      = []
  }

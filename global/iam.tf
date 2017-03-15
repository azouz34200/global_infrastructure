resource "aws_iam_user" "user" {
  name = "${var.username}"
}

resource "aws_iam_user" "opsidian" {
  name = "opsidian"
}

resource "aws_iam_access_key" "access_key_opsidian" {
  user = "${aws_iam_user.opsidian.name}"
}

resource "aws_iam_access_key" "access_key" {
  user = "${aws_iam_user.user.name}"
}

resource "aws_iam_group" "infra_automation" {
  name = "${var.group-name}"
}

resource "aws_iam_group_membership" "infra_automation" {
  name       = "${var.group-name}-group-membership"
  users      = ["${var.username}"]
  group      = "${var.group-name}"
  depends_on = ["aws_iam_user.user"]
}

resource "aws_iam_group_membership" "Developer" {
  name = "Developer"

  users = [
    "${aws_iam_user.Bob.name}",
    "${aws_iam_user.Tim.name}",
    "${aws_iam_user.Ben.name}",
  ]

  group = "${aws_iam_group.Developer.name}"
}

resource "aws_iam_group_membership" "Management" {
  name = "Management"

  users = [
    "${aws_iam_user.Ben.name}",
  ]

  group = "${aws_iam_group.Management.name}"
}
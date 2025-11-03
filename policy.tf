# Attach a policy to the opertions group
resource "aws_iam_group_policy_attachment" "operators_group_policy" {
  group      = aws_iam_group.operations.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"
}

# Attach a policy to the Admins group
resource "aws_iam_group_policy_attachment" "admins_group_policy" {
  group      = aws_iam_group.admins.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

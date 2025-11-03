# Create an IAM group
resource "aws_iam_group" "operations" {
  name = "operations"
}

# Create an IAM group
resource "aws_iam_group" "admins" {
  name = "admins"
}

# Add ops users to the operations group
resource "aws_iam_group_membership" "operations_membership" {
  name  = "operations-membership"
  users = [for u in aws_iam_user.ops_users : u.name]
  group = aws_iam_group.operations.name
}

# Add users to the Admins group
resource "aws_iam_group_membership" "admins_membership" {
  name  = "admins-membership"
  users = [for u in aws_iam_user.admin_users : u.name]
  group = aws_iam_group.admins.name
}

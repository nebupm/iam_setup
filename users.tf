# Create IAM users for Operations
resource "aws_iam_user" "ops_users" {
  for_each = toset(var.ops_user_names)
  name     = each.key
}

# Create IAM users for Admins
resource "aws_iam_user" "admin_users" {
  for_each = toset(var.admin_user_names)
  name     = each.key
}

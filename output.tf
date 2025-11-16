#########################################################
# OUTPUTS
#########################################################

# Friendly AWS Console URL for your account
output "aws_console_login_url" {
  value = "https://${data.aws_caller_identity.current.account_id}.signin.aws.amazon.com/console"
}

# Admin user names
output "admin_users" {
  value = [for u in aws_iam_user.admins : u.name]
}

# Operations user names
output "ops_users" {
  value = [for u in aws_iam_user.operations : u.name]
}

# Operations user role ARN (to be assumed)
output "ops_role_arn" {
  value = aws_iam_role.ops_user_role.arn
}

# Custom permissions policy ARN for ops users
output "ops_user_custom_policy_arn" {
  value = aws_iam_policy.ops_user_custom_policy.arn
}

# AllowAssumeOpsRole policy ARN
output "ops_assume_role_policy_arn" {
  value = aws_iam_policy.allow_assume_ops_role.arn
}

# Group names
output "iam_groups" {
  value = {
    admin_group = aws_iam_group.admin_group.name
    ops_group   = aws_iam_group.ops_group.name
  }
}

# (Optional) Initial console passwords for operations users
# ⚠️ WARNING: These appear in Terraform output and state file.
output "ops_user_console_passwords" {
  value     = { for u, p in aws_iam_user_login_profile.ops_user_passwords : u => p.password }
  sensitive = true
}
output "admin_user_console_passwords" {
  value     = { for u, p in aws_iam_user_login_profile.admin_user_passwords : u => p.password }
  sensitive = true
}

output "iam_operation_users" {
  value = [for user in aws_iam_user.ops_users : user.name]
}

output "iam_admin_users" {
  value = [for user in aws_iam_user.admin_users : user.name]
}

output "iam_group_operations" {
  value = aws_iam_group.operations.name
}

output "iam_group_admins" {
  value = aws_iam_group.admins.name
}

# terraform_aws_simple_iam
A simple terraform config to create IAM users, Groups and Attach policies.
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.100.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_group.admins](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) | resource |
| [aws_iam_group.operations](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) | resource |
| [aws_iam_group_membership.admins_membership](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_membership) | resource |
| [aws_iam_group_membership.operations_membership](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_membership) | resource |
| [aws_iam_group_policy_attachment.admins_group_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_group_policy_attachment.operators_group_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_user.admin_users](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user.ops_users](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_user_names"></a> [admin\_user\_names](#input\_admin\_user\_names) | List of IAM Admin user names | `list(string)` | <pre>[<br/>  "admin1",<br/>  "admin2",<br/>  "admin3"<br/>]</pre> | no |
| <a name="input_aws_profile"></a> [aws\_profile](#input\_aws\_profile) | The AWS profile to use for running the code | `string` | `"default"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region to deploy resources in | `string` | `"eu-west-2"` | no |
| <a name="input_ops_user_names"></a> [ops\_user\_names](#input\_ops\_user\_names) | List of IAM Ops user names | `list(string)` | <pre>[<br/>  "user1",<br/>  "user2",<br/>  "user3",<br/>  "user4",<br/>  "user5"<br/>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_admin_users"></a> [iam\_admin\_users](#output\_iam\_admin\_users) | n/a |
| <a name="output_iam_group_admins"></a> [iam\_group\_admins](#output\_iam\_group\_admins) | n/a |
| <a name="output_iam_group_operations"></a> [iam\_group\_operations](#output\_iam\_group\_operations) | n/a |
| <a name="output_iam_operation_users"></a> [iam\_operation\_users](#output\_iam\_operation\_users) | n/a |

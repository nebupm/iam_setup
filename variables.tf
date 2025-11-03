# Define the region for AWS resources
variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "eu-west-2"
}
# Define the region for AWS resources
variable "aws_profile" {
  description = "The AWS profile to use for running the code"
  type        = string
  default     = "default"
}


# Define the ops users
variable "ops_user_names" {
  description = "List of IAM Ops user names"
  type        = list(string)
  default = [
    "user1",
    "user2",
    "user3",
    "user4",
    "user5"
  ]
}

# Define the admin users
variable "admin_user_names" {
  description = "List of IAM Admin user names"
  type        = list(string)
  default = [
    "admin1",
    "admin2",
    "admin3"
  ]
}

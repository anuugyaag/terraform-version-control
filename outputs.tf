output "iam_user_name" {
  description = "Created IAM username"
  value       = aws_iam_user.s3_reader.name
}

output "iam_user_arn" {
  description = "ARN of the created IAM user"
  value       = aws_iam_user.s3_reader.arn
}

output "attached_policy_name" {
  description = "Name of the attached S3 read policy"
  value       = aws_iam_user_policy.s3_read_access.name
}

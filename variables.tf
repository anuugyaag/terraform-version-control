variable "iam_user_name" {
  description = "Name of the IAM user"
  type        = string
  default     = "terraform-s3-reader-p4"
}

variable "s3_read_policy" {
  description = "IAM policy allowing read-only access to S3"
  type        = string

  default = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject",
        "s3:ListBucket"
      ],
      "Resource": "*"
    }
  ]
}
EOF
}


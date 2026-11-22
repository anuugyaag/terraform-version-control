# Updated through Git feature branch for task 6
# Create IAM user
resource "aws_iam_user" "s3_reader" {
  name = var.iam_user_name

  tags = {
    Name      = "Terraform-S3-Reader"
    Project   = "Project-4"
    ManagedBy = "Terraform"
  }
}

# Attach S3 read policy to IAM user
resource "aws_iam_user_policy" "s3_read_access" {
  name   = "S3-Read-Only-Policy"
  user   = aws_iam_user.s3_reader.name
  policy = var.s3_read_policy
}

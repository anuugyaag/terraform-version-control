# Project 4: IAM User Automation with Terraform

## Project Overview
This project automates the creation of an AWS IAM user and attaches an S3 read-only access policy using Terraform.

## AWS Services Used
- AWS IAM
- Amazon S3

## Tools Used
- Terraform
- AWS CLI
- Linux

## Project Objectives
1. Create a new IAM user using Terraform.
2. Define an S3 read-only IAM policy.
3. Store the IAM policy JSON in a Terraform variable.
4. Attach the policy to the newly created IAM user.
5. Verify the deployed resources using Terraform.

## IAM User Details
- Username: `terraform-s3-reader-p4`
- Policy Name: `S3-Read-Only-Policy`

## Permissions Granted
- `s3:ListBucket`
- `s3:GetObject`

## Project Files
- `provider.tf` – AWS provider configuration.
- `variables.tf` – IAM username and policy variables.
- `main.tf` – IAM user and policy resources.
- `outputs.tf` – Deployment outputs.
- `README.md` – Project documentation.

## Deployment Commands

Initialize Terraform:
```bash
terraform init
```

Format configuration:
```bash
terraform fmt
```

Validate configuration:
```bash
terraform validate
```

Preview deployment:
```bash
terraform plan
```

Deploy resources:
```bash
terraform apply
```

Verify resources:
```bash
terraform state list
terraform output
```

## Deployment Result
Successfully created:
- 1 IAM user
- 1 IAM user inline policy

Terraform deployment summary:
`2 added, 0 changed, 0 destroyed`

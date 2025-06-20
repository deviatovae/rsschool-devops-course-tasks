## 🚀 Terraform VPC Setup with Bastion, NAT, IAM, S3, and Security Groups

This project sets up a basic AWS infrastructure including:

- Custom VPC
- 2 Public and 2 Private Subnets in 2 AZs
- Internet Gateway & NAT Gateway
- Route Tables
- Network ACLs (allow all for demonstration)
- Bastion Host for SSH access
- Security Groups for public and private resources
- IAM Role(s) and policies
- S3 bucket for infrastructure use or storage

---

## 📁 Project Structure

```bash
.
├── provider.tf
├── variables.tf
├── terraform.tfvars.example
├── bastion.tf
├── iam.tf
├── s3.tf
├── security.tf
├── subnets.tf
├── vpc.tf
└── ... (backend, outputs, etc.)
```

---

## 🔧 Prerequisites

- [Terraform >= 1.6.0](https://developer.hashicorp.com/terraform/downloads)
- AWS credentials configured (`aws configure`, env vars, or OIDC)
- A key pair created in EC2 → Key Pairs for bastion access

---

## 📦 Setup Instructions

1. Clone this repository

2. Create a `terraform.tfvars` file based on `terraform.tfvars.example`

3. Initialize and apply:

```bash
terraform init
terraform plan
terraform apply
```
---

## 🔐 Security Notes

- Bastion host uses wide-open SSH access (`0.0.0.0/0`) by default — restrict for production.
- IAM roles and policies should be validated per principle of least privilege.
- S3 access may be public/private depending on bucket policy (review `s3.tf`).
- Security Groups isolate public/private and control ingress strictly.

---

## 🤖 GitHub Actions CI/CD

This project includes a GitHub Actions workflow to automatically:

- Check Terraform formatting
- Run `terraform plan` on PRs
- Run `terraform apply` on push to `main`

### 🔧 Setup Required:
- Define `AWS_ACCOUNT_ID` in repository secrets
- Ensure the IAM role `GithubActionsRole` exists and is assumable by GitHub OIDC

### 📄 Example Workflow

Workflow file is located in `.github/workflows/terraform.yml`. It includes format checking, planning on pull requests, and automatic apply on push to `main`.

---

## 🧹 Cleanup

```bash
terraform destroy
```

---

## 📘 License
MIT
# 🚀 Terraform AWS Infrastructure

This repository contains Terraform code to manage AWS infrastructure. It uses:
- **Terraform v1.6+**
- **AWS S3** for remote state storage
- **GitHub Actions** for automated deploys via OIDC

## ✅ Prerequisites

- [Terraform v1.6+](https://developer.hashicorp.com/terraform/downloads)
- [AWS CLI v2](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- Access to an AWS account with appropriate IAM permissions

## 📁 Project Structure

.github/
└── workflows/
    └── terraform.yml        # GitHub Actions workflow

terraform/
├── backend.tf               # Remote backend (S3) configuration
├── iam.tf                   # IAM roles and policies
├── main.tf                  # Provider + versions
├── s3.tf                    # S3 bucket definition
├── terraform.tfvars         # Variable values
├── variables.tf             # Input variable schema

## 🧱 Clone the Repository

git clone https://github.com/deviatovae/rsschool-devops-course-tasks.git
cd rsschool-devops-course-tasks

## 🔐 Set Up AWS Credentials

aws configure

## 🧰 Initialize Terraform

cd terraform
terraform init

## 🧪 Plan and Apply

terraform plan
terraform apply

## 🤖 GitHub Actions

This repo includes a GitHub Actions workflow (.github/workflows/terraform.yml) that automatically:
- Executes terraform plan on pull requests to main
- Executes terraform apply on push to main using secure GitHub OIDC role authentication

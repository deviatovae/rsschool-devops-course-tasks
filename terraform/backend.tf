terraform {
  backend "s3" {
    bucket = "aldev-terraform-bucket"
    key    = "development/terraform.tfstate"
    region = "us-east-2"
  }
}
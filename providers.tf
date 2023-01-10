# --- root/providers.tf ---

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

# backend block
  backend "s3" {
    bucket = "s3-backend-jw-0123"
    key    = "Terraform_Two_Tier/terraform.tfstate"
    region = "us-east-1"
  }
}

# Configure the AWS Provider

provider "aws" {
  region = "us-east-1"
}

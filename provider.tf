terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.18.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region                   = var.region[terraform.workspace]
  shared_credentials_files = var.shared_credentials_file
  profile                  = var.workspace_aws_profiles[terraform.workspace]
}

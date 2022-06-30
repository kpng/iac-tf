variable "region" {
  default = {
    dev  = "ap-southeast-1"
    sit  = "ap-southeast-2"
    qa   = "ap-southeast-3"
    prod = "ap-northeast-1"
  }
}
variable "shared_credentials_file" { default = ["~/.aws/credentials"] }
variable "workspace_aws_profiles" {
  default = {
    dev  = "iac-tf-dev"
    sit  = "iac-tf-sit"
    qa   = "iac-tf-qa"
    prod = "iac-tf-prod"
  }
}
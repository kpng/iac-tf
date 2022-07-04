resource "aws_vpc" "this" {
  # for_each   = var.vpcs
  cidr_block = var.vpc
  tags = {
    Name = "${terraform.workspace}-vpc"
  }
}


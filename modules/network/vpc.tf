resource "aws_vpc" "this" {
  for_each   = var.vpc
  cidr_block = each.value.cidr_block

  tags = {
    Name = "${terraform.workspace}-${each.key}"
  }
}

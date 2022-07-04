resource "aws_internet_gateway" "this" {
  for_each = var.vpcs
  vpc_id   = aws_vpc.this.id
  tags = {
    Name = "IGW for ${each.key}"
  }
}
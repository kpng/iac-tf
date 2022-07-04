resource "aws_route_table" "this" {
  for_each = var.vpcs
  vpc_id   = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.this["${each.key}"].id
  }


  tags = {
    Name = "route table for ${each.key} "
  }
}
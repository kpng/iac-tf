resource "aws_nat_gateway" "this" {
  count         = length(var.public_subnet)
  allocation_id = aws_eip.natgw["${count.index}"].id
  subnet_id     = aws_subnet.this_public_subnet["${count.index}"].id

  tags = {
    Name = "NATGW in public subnet ${count.index}"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.this]
}


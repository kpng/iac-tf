resource "aws_eip" "natgw" {
  count = length(var.public_subnet)
  vpc   = true
  tags = {
    Name = "eip for natgw in public subnet ${count.index}}"
  }
}
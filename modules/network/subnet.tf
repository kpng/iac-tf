data "aws_availability_zones" "available" {
  state = "available"
}


resource "aws_subnet" "this_public_subnet" {
  count             = length(var.public_subnet)
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.public_subnet[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = {
    Name = "public subnet ${count.index}"
  }
}


resource "aws_subnet" "this_private_subnet" {
  count             = length(var.private_subnet)
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.private_subnet[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = {
    Name = "private subnet ${count.index}"
  }
}

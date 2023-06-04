##defining internet gateway

resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "mydina_internet gateway"
  }
}
#Create Route table
resource "aws_route_table" "demo-route" {
  vpc_id = aws_vpc.demo-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demo-igw.id

  }
  tags = {
    Name = "route to internet"
  }

}

#route 1

resource "aws_route_table_association" "route1" {
  subnet_id = aws_subnet.pub-sub-1.id
  route_table_id = aws_route_table.demo-route.id
}

#route 2

resource "aws_route_table_association" "route2" {
  subnet_id = aws_subnet.pub-sub-2.id
  route_table_id = aws_route_table.demo-route.id
}

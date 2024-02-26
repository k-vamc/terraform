#Creating pub-sub-1
resource "aws_subnet" "pub-sub-1" {
  vpc_id                  = aws_vpc.demo-vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-west-2a"
  map_public_ip_on_launch = "true"
  tags = {


    Name = "pub-sub-1"
  }

}

#Creating pub-sub-2
resource "aws_subnet" "pub-sub-2" {
  vpc_id                  = aws_vpc.demo-vpc.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "us-west-2b"
  map_public_ip_on_launch = "true"
  tags = {

    Name = "pub-sub-2"
  }

}
#Creating pvt-sub-1
resource "aws_subnet" "pvt-sub-1" {
  vpc_id                  = aws_vpc.demo-vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-west-2c"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "pvt-sub-1"
  }
}


#Creating pvt-sub-2
resource "aws_subnet" "pvt-sub-2" {
  vpc_id                  = aws_vpc.demo-vpc.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "us-west-2d"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "pvt-sub-2"
  }
}

#Creating pvt-sub-3
resource "aws_subnet" "pvt-sub-3" {
  vpc_id                  = aws_vpc.demo-vpc.id
  cidr_block              = "10.0.5.0/24"
  availability_zone       = "us-west-2a"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "pvt-sub-3"
  }
}


#Creating pvt-sub-4
resource "aws_subnet" "pvt-sub-4" {
  vpc_id                  = aws_vpc.demo-vpc.id
  cidr_block              = "10.0.6.0/24"
  availability_zone       = "us-west-2b"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "pvt-sub-4"
  }
}

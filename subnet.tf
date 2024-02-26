#Creating pub-sub-1
resource "aws_subnet" "pub-sub-1" {
  vpc_id                  = aws_vpc.demo-vpc.id
  cidr_block              = var.sub-1_cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = "true"
  tags = {


    Name = "pub-sub-1"
  }

}

#Creating pub-sub-2
resource "aws_subnet" "pub-sub-2" {
  vpc_id                  = aws_vpc.demo-vpc.id
  cidr_block              = var.sub-2_cidr
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = "true"
  tags = {

    Name = "pub-sub-2"
  }

}
#Creating pvt-sub-1
resource "aws_subnet" "pvt-sub-1" {
  vpc_id                  = aws_vpc.demo-vpc.id
  cidr_block              = var.sub-3_cidr
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "pvt-sub-1"
  }
}


#Creating pvt-sub-2
resource "aws_subnet" "pvt-sub-2" {
  vpc_id                  = aws_vpc.demo-vpc.id
  cidr_block              = var.sub-4_cidr
  availability_zone       = "us-east-1d"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "pvt-sub-2"
  }
}

#Creating pvt-sub-3
resource "aws_subnet" "pvt-sub-3" {
  vpc_id                  = aws_vpc.demo-vpc.id
  cidr_block              = var.sub-5_cidr
  availability_zone       = "us-east-1e"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "pvt-sub-3"
  }
}


#Creating pvt-sub-4
resource "aws_subnet" "pvt-sub-4" {
  vpc_id                  = aws_vpc.demo-vpc.id
  cidr_block              = var.sub-6_cidr
  availability_zone       = "us-east-1f"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "pvt-sub-4"
  }
}

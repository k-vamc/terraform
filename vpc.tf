resource "aws_vpc" "demo-vpc" {
cidr_block = var.vpc_cidr
instance_tenancy = "default"
tags = {
Name = "demo-vpc"
}
}

#security group for front end tier

resource "aws_security_group" "web-sg" {
vpc_id = aws_vpc.demo-vpc.id

#Inbound rules

#http access from anywhere
ingress {
from_port = 80
to_port = 80 
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

#https access from anywhere
ingress {
from_port = 443
to_port = 443
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
#ssh access from anywhere
ingress {
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

#outbound rules

#internet access to anywhere
egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}
tags = {
Name = "web-sg"
}
}

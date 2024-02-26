#launching ec2 instances

#lanching ec2-1
resource "aws_instance" "food" {
ami = "ami-07761f3ae34c4478d"
instance_type = "t2.micro"
key_name = "oregon"
vpc_security_group_ids = [aws_security_group.web-sg.id]
subnet_id = aws_subnet.pub-sub-1.id
associate_public_ip_address = true
user_data = file("data1.sh")
tags = {
name = "ec2-1"
}
}
#lanching ec2-2
resource "aws_instance" "mario" {
ami = "ami-07761f3ae34c4478d"
instance_type = "t2.micro"
key_name = "oregon"
vpc_security_group_ids = [aws_security_group.web-sg.id]
subnet_id = aws_subnet.pub-sub-2.id
associate_public_ip_address = true
user_data = file("data2.sh")
tags = {
name = "EC2-2"
}
}

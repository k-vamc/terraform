#rds file

resource "aws_db_subnet_group" "rds-sub" {
  name       = "rds-sub"
  subnet_ids = [aws_subnet.pvt-sub-1.id, aws_subnet.pvt-sub-2.id]

  tags = {
    Name = "Db subnet group"

  }
}
resource "aws_db_instance" "rds-subnet" {
  allocated_storage      = 10
  db_subnet_group_name   = aws_db_subnet_group.rds-sub.id
  engine                 = "mysql"
  engine_version         = "8.0.35"
  instance_class         = "db.t2.micro"
  multi_az               = true
  username               = "admin123"
  password               = "admin0123"
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.db-sg.id]
}


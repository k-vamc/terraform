#load balancer

resource "aws_lb" "external-alb" {
  name               = "app-LB"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.web-sg.id]
  subnets            = [aws_subnet.pub-sub-1.id, aws_subnet.pub-sub-2.id]
}

resource "aws_lb_target_group" "target_elb" {
  name     = "ALB-TG"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.demo-vpc.id
health_check {
path = "/health"
port = 80
protocol = "HTTP"
}
}
resource "aws_lb_target_group_attachment" "food" {
  target_group_arn = aws_lb_target_group.target_elb.arn
  target_id        = aws_instance.food.id
  port             = 80

  depends_on = [
    aws_lb_target_group.target_elb,
    aws_instance.food,
  ]
}

resource "aws_lb_target_group_attachment" "mario" {
  target_group_arn = aws_lb_target_group.target_elb.arn
  target_id        = aws_instance.mario.id
  port             = 80

  depends_on = [
    aws_lb_target_group.target_elb,
    aws_instance.mario,
  ]
}

resource "aws_lb_listener" "listener_elb" {
  load_balancer_arn = aws_lb.external-alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target_elb.arn
  }
}


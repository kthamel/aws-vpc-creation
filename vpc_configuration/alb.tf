resource "aws_lb" "kthamel-eks-alb" {
  name               = "kthamel-eks-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = aws_security_group.public-subnet-assoc.id

  enable_deletetion_protection = false

  access_logs {
    bucket  = "kthamel-alb-access-logs"
    prefix  = "aws-eks"
    enabled = true
  }

  tags = local.common_tags
}
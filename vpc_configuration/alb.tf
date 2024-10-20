resource "aws_lb" "kthamel-alb" {
  name               = "EKS-Loadbalancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.public-subnet-assoc.id]
  subnets            = [kthamel-ec2-subnet-pub-core.id]

  enable_deletion_protection = true

  access_logs {
    bucket  = "kthamel-alb-access-logs"
    prefix  = "eks-dev"
    enabled = true
  }

  tags = local.common_tags

}

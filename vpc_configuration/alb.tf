resource "aws_lb" "kthamel-alb" {
  name               = "EKS-Loadbalancer"
  depends_on         = aws_s3_bucket.kthamel-alb-access-logs.id
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.public-subnet-assoc.id]
  subnets            = [aws_subnet.kthamel-ec2-subnet-pub-core-1a.id,aws_subnet.kthamel-ec2-subnet-pub-core-1b.id]
  enable_deletion_protection = false
  
  access_logs {
    bucket  = aws_s3_bucket.kthamel-alb-access-logs.id
    prefix  = "AWSLogs"
    enabled = true
  }

  tags = local.common_tags

}

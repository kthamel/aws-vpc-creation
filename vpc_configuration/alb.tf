# resource "aws_lb" "kthamel-eks-alb" {
#   name               = "kthamel-eks-alb"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = ["sg-06ef98d8997c35818"]
#   enable_deletion_protection = false
#   subnets           = ["subnet-025d011a84e801ae7","subnet-0dedaaf475b652bdc"]
#   access_logs {
#     bucket  = "kthamel-alb-access-logs"
#     prefix  = "aws-eks"
#     enabled = true
#   }

#   tags = local.common_tags
# }
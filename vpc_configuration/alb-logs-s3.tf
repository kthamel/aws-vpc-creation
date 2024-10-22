resource "aws_s3_bucket" "kthamel-alb-access-logs" {
  bucket = "kthamel-alb-access-logs"

  versioning {
    enabled = true
  }

  acl = "private"

  tags = {
    Name = "ALB Access Logs Bucket"
  }
}

resource "aws_s3_bucket_policy" "kthamel-alb-access-logs-bucket-policy" {
  bucket = aws_s3_bucket.kthamel-alb-access-logs.id

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Principal" : {
          "Service" : "elasticloadbalancing.amazonaws.com"
        },
        "Action" : "s3:PutObject",
        "Resource" : "arn:aws:s3:::kthamel-alb-access-logs/*",
        "Condition" : {
          "StringEquals" : {
            "aws:SourceAccount" : 533629863969
          },
          "ArnLike" : {
            "aws:SourceArn" : "arn:aws:elasticloadbalancing:us-east-1:533629863969:loadbalancer/*"
          }
        }
      }
    ]
  })
}


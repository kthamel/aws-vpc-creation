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
    Version = "2012-10-17"
    Id      = "kthamel-alb-access-logs-bucket-policy"
    Statement = [
      {
        # Sid       = "IPAllow"
        Effect = "Allow"
        Principal = {
          "AWS" : "arn:aws:iam::533629863969:root"
        }
        Action = "s3:*"
        Resource = [
          aws_s3_bucket.kthamel-alb-access-logs.arn,
          "${aws_s3_bucket.kthamel-alb-access-logs.arn}/*"
        ]
      }
    ]
  })
}

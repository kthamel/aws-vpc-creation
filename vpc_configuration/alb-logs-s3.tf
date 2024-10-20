resource "aws_s3_bucket" "kthamel-alb-access-logs" {
  bucket = "kthamel-s3-alb-access-logs"

  tags = local.common_tags
}

resource "aws_s3_bucket_policy" "allow_alb_logging" {
  bucket = aws_s3_bucket.kthamel-alb-access-logs.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          AWS = "arn:aws:iam::533629863969:root"
        }
        Action = "s3:PutObject"
        Resource = "${aws_s3_bucket.kthamel-alb-access-logs.arn}/AWSLogs/${data.aws_caller_identity.current.account_id}/*"
      }
    ]
  })
}

data "aws_caller_identity" "current" {}

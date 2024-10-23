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
    "Id" : "Policy1729689145524",
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "Stmt1729689143218",
        "Action" : "s3:*",
        "Effect" : "Allow",
        "Resource" : "arn:aws:s3:::kthamel-alb-access-logs/alb-logs",
        "Principal" : "*"
      }
    ]
  })
}

# Step 1: Define the S3 bucket
resource "aws_s3_bucket" "alb_access_logs" {
  bucket = "kthamel-alb-access-logs"

  versioning {
    enabled = true
  }

  acl = "private"

  tags = local.common_tags
}

# Step 2: Define the bucket policy
resource "aws_s3_bucket_policy" "alb_access_logs_policy" {
  bucket = aws_s3_bucket.alb_access_logs.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "logdelivery.elasticloadbalancing.amazonaws.com"
        },
        Action = "s3:PutObject",
        Resource = "arn:aws:s3:::kthamel-alb-access-logs/alb-logs/*",
        Condition = {
          StringEquals = {
            "s3:x-amz-acl" = "bucket-owner-full-control"
          }
        }
      },
      {
        Effect = "Allow",
        Principal = {
          Service = "logdelivery.elasticloadbalancing.amazonaws.com"
        },
        Action = "s3:PutObject",
        Resource = "arn:aws:s3:::kthamel-alb-access-logs/*",
        Condition = {
          StringEquals = {
            "s3:x-amz-acl" = "bucket-owner-full-control"
          }
        }
      },
      {
        Effect = "Allow",
        Action = "s3:ListBucket",
        Principal = {
          Service = "logdelivery.elasticloadbalancing.amazonaws.com"
        },
        Resource = "arn:aws:s3:::kthamel-alb-access-logs"
      }
    ]
  })
}



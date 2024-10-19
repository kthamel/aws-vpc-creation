provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "kthamel-ec2-vpc" {
  cidr_block                       = "172.32.0.0/16"
  assign_generated_ipv6_cidr_block = false
  enable_dns_support               = true
  enable_dns_hostnames             = true

  tags = local.common_tags
}



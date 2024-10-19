resource "aws_subnet" "kthamel-ec2-subnet-0a" {
  vpc_id                  = aws_vpc.kthamel-ec2-vpc.id
  cidr_block              = "172.32.0.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = local.common_tags
}

resource "aws_subnet" "kthamel-ec2-subnet-1a" {
  vpc_id                  = aws_vpc.kthamel-ec2-vpc.id
  cidr_block              = "172.32.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = local.common_tags
}
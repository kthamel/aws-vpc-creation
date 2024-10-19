resource "aws_subnet" "kthamel-ec2-subnet-0b" {
  vpc_id                  = aws_vpc.kthamel-ec2-vpc.id
  cidr_block              = "172.32.10.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = local.common_tags
}

resource "aws_subnet" "kthamel-ec2-subnet-1b" {
  vpc_id                  = aws_vpc.kthamel-ec2-vpc.id
  cidr_block              = "172.32.11.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = local.common_tags
}
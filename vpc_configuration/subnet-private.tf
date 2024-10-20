resource "aws_subnet" "kthamel-ec2-subnet-pri-01" {
  vpc_id                  = aws_vpc.kthamel-ec2-vpc.id
  cidr_block              = "172.32.11.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = local.common_tags
}

resource "aws_subnet" "kthamel-ec2-subnet-pri-02" {
  vpc_id                  = aws_vpc.kthamel-ec2-vpc.id
  cidr_block              = "172.32.12.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = local.common_tags
}

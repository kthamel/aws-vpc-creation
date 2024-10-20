resource "aws_subnet" "kthamel-ec2-subnet-pub-core" {
  vpc_id                  = aws_vpc.kthamel-ec2-vpc.id
  cidr_block              = "172.32.0.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = local.common_tags
}

resource "aws_subnet" "kthamel-ec2-subnet-pub-01" {
  vpc_id                  = aws_vpc.kthamel-ec2-vpc.id
  cidr_block              = "172.32.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = local.common_tags
}

resource "aws_subnet" "kthamel-ec2-subnet-pub-02" {
  vpc_id                  = aws_vpc.kthamel-ec2-vpc.id
  cidr_block              = "172.32.2.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = local.common_tags
}
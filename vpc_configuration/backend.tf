terraform {
  backend "s3" {
    bucket = "kthamel-vpc-configuration"
    key    = "demo-vpc-tfstate"
    region = "us-east-1"
  }
}

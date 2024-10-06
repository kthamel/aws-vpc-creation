terraform {
  backend "s3" {
    bucket = "kthamel-terrafeorm-states"
    key    = "eks-vpc-tfstate"
    region = "us-east-1"
  }
}

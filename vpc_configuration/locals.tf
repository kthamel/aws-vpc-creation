locals {
  Name    = "AWS_Infrastructure"
  Project = "DevOps"
}

locals {
  common_tags = {
    Name           = local.Name
    DevOps_Project = local.Project
  }
}

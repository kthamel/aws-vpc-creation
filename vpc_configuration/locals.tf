locals {
  Name    = "JENKINS_RESOURCE"
  Project = "JENKINS_TERRAFORM"
}

locals {
  common_tags = {
    Name           = local.Name
    DevOps_Project = local.Project
  }
}

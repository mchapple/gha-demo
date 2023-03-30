terraform {
  required_version = ">= 1.1.6"
  backend "s3" {
    bucket = "mgc-terra-state"
    key    = "mgc-lovely-bucket"
    region = "eu-west-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
}
# terraform {
#   backend "s3" {
#     bucket = "mgc-terra-state"
#     key    = "mgc-lovely-bucket"
#     region = "eu-west-1"
#   }
# }

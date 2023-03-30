provider "aws" {
  version = "~> 2.0"
  region  = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket = "mgc-terra-state"
    key    = "mgc-lovely-bucket"
    region = "eu-west-1"
  }
}

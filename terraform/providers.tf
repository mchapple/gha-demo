terraform {
  required_version = ">= 1.3.8"
  backend "s3" {
    bucket = "mgc-terra-state"
    key    = "mgc-lovely-bucket"
    region = "eu-west-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

locals {
  bucket_name = "mgc-website-bucket"
}

terraform {
  required_version = ">= 1.1.6"
  backend "s3" {
    bucket = "mgc-terra-state"
    key    = "mgc-lovely-bucket"
    region = "eu-west-1"
  }

  required_providers {
    aws = {
      #   source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
}

resource "aws_s3_bucket" "s3Bucket" {
  bucket = local.bucket_name
  acl    = "public-read"

  policy = <<EOF
{
  "Id": "MakePublic",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::${local.bucket_name}/*",
      "Principal": "*"
    }
  ]
}
EOF

  website {
    index_document = "index.html"
  }
}

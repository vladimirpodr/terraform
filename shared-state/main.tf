provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "jms-terraform-shared-state"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}

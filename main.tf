provider "aws" {
  region  = "us-west-2"
}

resource "aws_s3_bucket" "secure_bucket" {
  bucket = "devsecops-demo-secure-bucket"
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
        apply_server_side_encryption_by_default {
            sse_algorithm = "AES256"
        }
     }
  }
}

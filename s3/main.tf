data "aws_s3_bucket" "selected" {
  bucket = "s320260710"
}

resource "aws_s3_bucket_lifecycle_configuration" "lifecyclerule" {
  bucket = data.aws_s3_bucket.selected.id

  rule {
    id = "Allow small object transitions"

    filter {
      prefix                   = "logs/"
    }

    status = "Enabled"

    transition {
      days          = 2
      storage_class = "GLACIER_IR"
    }

     expiration {
      days = 3
    }
  }
}
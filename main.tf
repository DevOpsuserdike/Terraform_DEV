resource "aws_instance" "web" {
  ami           = "ami-07e88eae8fab7dd8a" # Ubuntu Server 24.04 LTS (ap-south-1)
  instance_type = var.instance_type
}


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
terraform {
    backend "s3" {
    bucket         = "company-production-tfstate-20260710"       # The pre-existing S3 bucket name
    key            = "finance/apps/vpc.terraform.tfstate" # Path and filename inside the bucket
    region         = "us-east-1"                         # AWS Region where the bucket lives
    encrypt        = true                                # Force server-side encryption of the state file
    dynamodb_table = "company-production-tflocks"       # DynamoDB table used for state concurrency locking
  } 
}
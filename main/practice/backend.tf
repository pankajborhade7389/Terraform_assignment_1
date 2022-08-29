terraform {
  backend "s3" {
    bucket = "mybucket-apv"
    key    = "terraform.tfstate"
    region = "us-east-1"
    # dynamodb_table = "practice-apv2"
  }
}
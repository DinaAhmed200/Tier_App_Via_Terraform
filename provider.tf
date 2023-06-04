# Configure the AWS Provider

provider "aws" {
  region = "us-east-1"
}


terraform {
  backend "s3" {
  bucket = "mydinabucket-bucket"
  key    = "my-tf-state"
  region = "us-east-1"
  dynamodb_table = "mydinadynamo-db"
  }
}

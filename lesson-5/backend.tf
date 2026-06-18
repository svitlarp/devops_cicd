terraform {
  backend "s3" {
    bucket         = "lesson5-s3-tfstate"
    key            = "lesson5/terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "lesson5-dynamodb-tfstate"
    encrypt        = true
  }
}
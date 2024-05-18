terraform {
  required_providers {

    aws = {
    source = "hashicorp/aws"
    version = "5.48.0"
    }
  }
  
  backend "s3" {

    bucket = "leelaterraformbucket"
    key = "multi-env-workspace"
    region = "us-east-1"
    dynamodb_table = "leelaterraformtable"

  }

}

provider "aws" {

    region = "us-east-1"
}

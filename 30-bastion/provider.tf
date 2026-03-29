terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0" # Terraform AWS provider version
    }
  }
   backend "s3" {
      bucket         = "pinjari99"                 # Name of your S3 bucket
      key            = "dev-bastion-roboshop"       # Path inside the bucket
      region         = "us-east-1"                  # AWS region
      encrypt        = true                         # Encrypt state at rest
      use_lockfile = true     #enables native s3 locking
  }
}

provider "aws" {
  region = "us-east-1"
}
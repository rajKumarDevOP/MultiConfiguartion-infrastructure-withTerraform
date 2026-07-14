terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.54.0"
    }
  }

  backend "s3" {
    bucket         = "nmims-tfstate"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile = "true"
    encrypt        = true
  }
  
}


#this provider block can also be configure with separate provider.tf file 
# provider "aws" {
#   # Configuration options
# }
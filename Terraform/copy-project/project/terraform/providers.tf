terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.91.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
  shared_credentials_files = ["/Users/tf_user/.aws/creds"]
  profile = "Terraform_vscode"
}

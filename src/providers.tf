terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
    backend "s3" {
    }
    #comando q cria o estado dentro do bucket: terraform init -backend-config="bucket=celio-ctba-us-east-1-terraform-statefile" -backend-config="infra-state.tfstate"
}

provider "aws" {
  region = var.aws_region
}
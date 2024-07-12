terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.58.0"
    }
  }
}

variable "akey" {
  type      = string
  sensitive = true

}
variable "skey" {
  type      = string
  sensitive = true

}
variable "location" {
  type      = string
  sensitive = true

}

terraform {
  cloud {
    organization = "wipro33"
    hostname     = "app.terraform.io"
    workspaces {
      name = "12072024"
    }
  }
}

provider "aws" {
  access_key = var.akey
  secret_key = var.skey
  region     = var.location
}

resource "aws_s3_bucket" "wipro-bucket1" {
  bucket = "wipro-bucket2-trainer2-1207-02"
  tags = {
    "purposer" = "tolearn-terraform-cloud"
  }
}

resource "aws_instance" "vm1" {
    ami = "ami-0ec0e125bb6c6e8ec"
    instance_type ="t2.nano"
    tags = {
      "Name" = "LearningCloud"
    }
  
}
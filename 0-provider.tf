# Provider with some variables such as EKS cluster name and a region.
variable "cluster_name" {
  default = "demo"
}

variable "kubernets_version" {
  default = "1.27"
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  required_version = "~> 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.6"
    }
  }
}

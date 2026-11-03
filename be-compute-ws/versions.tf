terraform {
  required_version = ">= 1.16"

  cloud {
    organization = "cie-hellocloud-org"

    workspaces {
      name = "vcs-be-compute-ws-opa"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.6.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.9.1"
    }
  }
}
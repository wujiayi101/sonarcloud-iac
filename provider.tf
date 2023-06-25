terraform {
  required_providers {
    sonarcloud = {
      source  = "rewe-digital/sonarcloud"
      version = "0.5.2"
    }
  }

  cloud {
    organization = "wujiayi"
    workspaces {
      name = "sonarcloud-iac"
    }
  }
}

provider "sonarcloud" {
  organization = var.github_org
  token        = var.token
}
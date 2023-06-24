terraform {
  required_providers {
    sonarcloud = {
      source  = "rewe-digital/sonarcloud"
      version = "0.5.2"
    }
  }
}

provider "sonarcloud" {
  organization = var.github_org
  token        = var.token
}
terraform {
  cloud {
    organization = "npcr-home"
    workspaces {
      name = "home-lab"
    }
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }

  required_version = ">= 1.0.0"
}


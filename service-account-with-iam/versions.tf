terraform {
  required_version = "~> v1.6.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.4.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 5.4.0"
    }
  }
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("../gcp_service_accounts/aerial_editor.json")

  project = "aerial-day-395305"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name        = "terraform-network"
  description = "VPC network created by Terraform"
}

terraform {
    backend "gcs" { 
      bucket  = "terraform-state-ek-now"
      prefix  = "prod"
    }
}

provider "google" {
  project = var.project
  region = var.region
}
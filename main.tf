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

#resource "google_cloud_run_service" "default" {
#  name     = "cloudrun-srv"
#  location = "us-central1"

#  template {
#    spec {
#      containers {
#        image = var.image
#        startup_probe {
#          initial_delay_seconds = 10
#          timeout_seconds = 5
#          period_seconds = 3
#          failure_threshold = 1
#          tcp_socket {
#            port = 8080
#          }
#        }
#        liveness_probe {
#          http_get {
#            path = "/"
#          }
#        }
#      }
#    }
#  }

 # traffic {
 #   percent         = 100
 #   latest_revision = true
 # }

 # lifecycle {
 ##   ignore_changes = [
 #     metadata.0.annotations,
#    ]
#  }
#}

#resource "google_cloud_run_service_iam_policy" "public_access" {
#  service = google_cloud_run_service.default.name
#  location = google_cloud_run_service.default.location
#  policy_data = data.google_iam_policy.public_iam_policy.policy_data
#}

#data "google_iam_policy" "public_iam_policy" {
#  binding {
#    role = "roles/run.invoker"
#    members = ["allUsers"]
#  }
#}

provider "google" {
  project = "peerless-glass-450611-a0"  
}

resource "google_cloud_run_service" "cloudrun" {
  name     = "cloudrun-srv"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}
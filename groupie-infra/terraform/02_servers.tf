resource "google_compute_instance" "web" {
  name         = "app-server"
  machine_type = "e2-micro"
  zone         = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }
}

resource "google_artifact_registry_repository" "groupie-repo" {
  location      = "us-east1"
  repository_id = "groupie-repository"
  description   = "Groupie artifact repository"
  format        = "DOCKER"
} 

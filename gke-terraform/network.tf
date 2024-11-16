resource "google_compute_network" "vpc" {
  name                    = "gke-vpc"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnet" {
  name          = "gke-subnet"
  region        = "europe-west9"
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.0.0.0/24"
}

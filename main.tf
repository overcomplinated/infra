provider "google" {
  project = "tftest-380716"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_storage_bucket" "overcomplinated-tfState-1985" {
  name          = "overcomplinated-tfState-1985"
  location      = "US"
  storage_class = "STANDARD"
}
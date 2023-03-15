terraform {
  backend "gcs" {
    bucket = "overcomplinated-tf-state-test"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "tftest-380716"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_storage_bucket" "overcomplinated-tf-state-test" {
  name          = "overcomplinated-tf-state-test"
  location      = "US"
  storage_class = "STANDARD"
}
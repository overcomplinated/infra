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

resource "null_resource" "example" {}  

resource "google_storage_bucket" "overcomplinated-tf-state-test" {
  name          = "overcomplinated-tf-state-test"
  location      = "US"
  storage_class = "STANDARD"
}

resource "google_storage_bucket" "overcomplinated-atlantis-bucket-create-test" {
  name          = "overcomplinated-atlantis-bucket-create-test"
  location      = "US"
  storage_class = "STANDARD"
}
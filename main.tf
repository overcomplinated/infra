provider "google" {
  project = "tftest-380716"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_storage_bucket" "overcomplinatedtfState1985" {
  name          = "overcomplinatedtfState1985"
  location      = "US"
  storage_class = "STANDARD"
}
provider "google" {
  project     = "home-server"
  credentials = var.tf_sa_key
}
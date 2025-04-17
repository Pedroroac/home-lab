resource "google_storage_bucket" "backup-bucket" {
  name          = "backup-bucket"
  location      = "NORTHAMERICA-NORTHEAST2"
  force_destroy = true

  public_access_prevention = "enforced"
}
resource "google_storage_bucket" "backup-bucket" {
  name          = "backup-bucket-${var.project_id}"
  location      = "NORTHAMERICA-NORTHEAST2"
  force_destroy = true

  public_access_prevention = "enforced"
}
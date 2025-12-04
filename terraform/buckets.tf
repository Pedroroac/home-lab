resource "google_storage_bucket" "backup-bucket" {
  name          = "backup-bucket-${var.project_id}"
  location      = "NORTHAMERICA-NORTHEAST2"
  force_destroy = false

  public_access_prevention = "enforced"

  storage_class = "COLDLINE"

  lifecycle_rule {
    action {
      type          = "SetStorageClass"
      storage_class = "COLDLINE"
    }
    condition {
      matches_storage_class = ["STANDARD", "NEARLINE", "ARCHIVE"]
      age                   = 0
    }
  }
}
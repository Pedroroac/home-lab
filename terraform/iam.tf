resource "google_service_account" "truenas_backup" {
  account_id   = "truenas-backup"
  display_name = "TrueNAS Scale Backup Service Account"
  description  = "Service account used by TrueNAS Scale to upload backups to GCP"
}

resource "google_storage_bucket_iam_member" "truenas_backup_storage_admin" {
  bucket = google_storage_bucket.backup-bucket.name
  role   = "roles/storage.objectAdmin"
  member = "serviceAccount:${google_service_account.truenas_backup.email}"
}

resource "google_project_iam_member" "truenas_backup_bucket_viewer" {
  project = var.project_id
  role    = "roles/storage.bucketViewer"
  member  = "serviceAccount:${google_service_account.truenas_backup.email}"
}

resource "google_service_account_key" "truenas_backup_key" {
  service_account_id = google_service_account.truenas_backup.name
} 
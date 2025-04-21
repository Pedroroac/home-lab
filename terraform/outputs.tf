output "truenas_backup_key" {
  value     = google_service_account_key.truenas_backup_key.private_key
  sensitive = true
}

output "truenas_backup_email" {
  value = google_service_account.truenas_backup.email
} 
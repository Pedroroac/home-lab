variable "tf_sa_key" {
  type        = string
  description = "Service account key for GCP"
  default     = ""
}
variable "project_id" {
  type        = string
  description = "GCP project ID"
  default     = "home-server-457102"
}
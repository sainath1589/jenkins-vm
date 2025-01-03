resource "google_storage_bucket" "my-bukcet" {
  name = "devaramunginta"
  project = "future-lane-444809-c3"
  location = "US"
  force_destory = true
  public_access_prevention = "enforced"
}

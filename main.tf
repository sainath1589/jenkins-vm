resource "google_storage_bucket" "my-bucket" {
  name                     = "devaramunginta"
  project                  = "future-lane-444809-c3"
  location                 = "US"
  force_destroy            = true  # Correct spelling of the argument
  public_access_prevention = "enforced"
}

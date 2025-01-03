# Define the Google provider
provider "google" {
  project     = var.project_id  # Reference the variable for project ID
  region      = "us-central1"   # Specify the region
  # Pass service account credentials from variables
}



# Variable for GCP Project ID
variable "project_id" {
  description = "The GCP Project ID"
  type        = string
  default     = "future-lane-444809-c3" # Default project ID
}

# Resource definition for a Compute Engine instance
resource "google_compute_instance" "default" {
  name         = "example-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  # Boot disk configuration
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11" # Specify the Debian 11 image
    }
  }

  # Network interface configuration
  network_interface {
    network       = "default" # Use the default network
    access_config {}          # Enable external access (NAT)
  }

  # Instance tags for optional firewall rules
  tags = ["http-server", "https-server"]
}



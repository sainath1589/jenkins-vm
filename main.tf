provider "google" {
  project_id = "future-lane-444809-c3" 
  region  = "us-central1"         
}

variable "project_id" {
  description = "The GCP Project ID"
  type        = string
}

resource "google_compute_instance" "default" {
  name         = "example-vm"
  machine_type = "e2-micro"        
  zone         = "us-central1-a"  

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"          
    access_config {}             
  }

  tags = ["http-server", "https-server"] # Optional, for HTTP/S firewall rules
}

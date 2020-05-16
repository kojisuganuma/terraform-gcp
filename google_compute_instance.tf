variable "GOOGLE_CREDENTIALS" {}
variable "PROJECT_ID" {}

provider "google" {
  credentials = "${var.GOOGLE_CREDENTIALS}"
  project     = "${var.PROJECT_ID}"
  region      = "us-central1"
  zone        = "us-central1-c"
}

resource "google_compute_instance" "tf-cloud-01" {
    name         = "tf-cloud-01"
    machine_type = "f1-micro"
    allow_stopping_for_update = true

    boot_disk {
        initialize_params {
        size  = 10
        type  = "pd-standard"
        image = "debian-cloud/debian-9"
        }
    }

	network_interface {
		network = "default"
	}
}

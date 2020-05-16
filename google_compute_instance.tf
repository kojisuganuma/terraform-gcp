variable "GOOGLE_CREDENTIALS" {}
variable "PROJECT_ID" {}

provider "google" {
  credentials = "${var.GOOGLE_CREDENTIALS}"
  project     = "${var.PROJECT_ID}"
  region      = "asia-northeast1"
  zone        = "asia-northeast1-b"
}

resource "google_compute_instance" "tf-cloud-01" {
    name         = "tf-compute-instance"
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

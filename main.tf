provider "google" {
	credentials = "${file("creds.json")}"
	project = "terraform-162515"
	region = "europe-west1"
}

resource "google_compute_instance" "web" {
name = "web"
machine_type = "f1-micro"
zone = "europe-west1-c"

disk {
  image= "debian-cloud/debian-8"
}

network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }   
}

}

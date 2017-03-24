resource "google_compute_instance" "web" {
#name = "web2"
name         = "${var.enviroment}-web001"
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

provider "google" {
        credentials = "${file("creds.json")}"
        project = "terraform-162515"
        region = "europe-west1"
}

provider "google" {
    credentials = "${file("~/account.json")}"
    region = "us-central1"
    project = "jenkins-196717"
}
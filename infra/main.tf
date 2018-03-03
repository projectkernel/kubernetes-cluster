resource "google_container_cluster" "gcp_kubernetes" {
    name               = "${var.cluster_name}"
    zone               = "us-central1-a"
    initial_node_count = "${var.gcp_cluster_count}"
    node_version = "1.9.3-gke.0"
    node_config {
        oauth_scopes = [
          "https://www.googleapis.com/auth/compute",
          "https://www.googleapis.com/auth/devstorage.read_only",
          "https://www.googleapis.com/auth/logging.write",
          "https://www.googleapis.com/auth/monitoring",
        ]
        machine_type = "${var.machine_type}"
        disk_size_gb = "10"
    }
}
resource "google_container_cluster" "gcp_kubernetes" {
    name               = "${var.cluster_name}"
    zone               = "us-central1-a"
    initial_node_count = "${var.gcp_cluster_count}"
    # master_auth {
    #     username = "${var.linux_admin_username}"
    #     password = "${var.linux_admin_password}}"
    # }
    node_version = "1.9.2-gke.1"
    node_config {
        oauth_scopes = [
          "https://www.googleapis.com/auth/compute",
          "https://www.googleapis.com/auth/devstorage.read_only",
          "https://www.googleapis.com/auth/logging.write",
          "https://www.googleapis.com/auth/monitoring",
        ]
        machine_type = "f1-micro"
        disk_size_gb = "10"
    }
    maintenance_policy {
        daily_maintenance_window {
            start_time = "03:00"
        }
    }
}
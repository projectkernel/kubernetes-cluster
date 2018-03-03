variable "gcp_cluster_count" {
    type = "string"
    default = "3"
    description = "Count of cluster instances to start."
}

variable "cluster_name" {
    type = "string"
    default = "test-cluster"
    description = "Cluster name for the GCP Cluster."
}

variable "machine_type" {
    type = "string"
    default = "g1-small"
    description = "Machine used for each node"
}

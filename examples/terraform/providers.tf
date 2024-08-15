provider "helm" {
  kubernetes {
    config_path            = "~/.kube/config"
    config_context_cluster = var.cluster_context
  }
}

provider "kubernetes" {
  config_path            = "~/.kube/config"
  config_context_cluster = var.cluster_context
}
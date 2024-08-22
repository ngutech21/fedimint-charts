variable "cluster_context" {
  description = "The context name of the cluster used to deploy"
  type        = string
}

variable "namespace" {
  description = "The number of the cluster used to deploy"
  type        = string
  default     = "fedimint-terraform"
}

variable "base_url" {
  description = "The base url for creating the ingress hosts for gatewayd"
  type        = string
}

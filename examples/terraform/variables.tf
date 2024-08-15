variable "cluster_name" {
  description = "The number of the cluster used to deploy"
  type        = string
}

variable "namespace" {
  description = "The number of the cluster used to deploy"
  type        = string
  default     = "fedimint-terraform"
}


variable "fedimintd_node_count" {
  description = "The number of fedimintd guardians to deploy"
  type        = number
  default     = 4
}


variable "base_url" {
  description = "The base url for creating the ingress hosts for fedimintd and gatewayd"
  type        = string
  default     = "mydomain.com"
}

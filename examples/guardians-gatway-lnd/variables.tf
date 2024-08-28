variable "cluster_context" {
  description = "The context name of the cluster used to deploy"
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
}

variable "gateway_lnd_tls_cert_path" {
  description = ""
  type        = string
}

variable "gateway_lnd_admin_macaroon_base64_path" {
  description = ""
  type        = string
}

variable "gateway_lnd_rpc_host" {
  description = ""
  type        = string
}


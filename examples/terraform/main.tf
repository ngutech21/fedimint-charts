resource "helm_release" "fedimintd" {
  name             = "fedimint-${count.index + 1}"
  repository       = "https://ngutech21.github.io/fedimint-charts/"
  chart            = "fedimintd"
  namespace        = var.namespace
  create_namespace = true
  timeout          = 180
  wait             = false
  count            = var.fedimintd_node_count


  set {
    name  = "fedimintd.ingress.enabled"
    value = "true"
  }

  set {
    name  = "fedimintd.ingress.hosts.api.host"
    value = "api.fedimint-${count.index + 1}.${var.base_url}"
  }

  set {
    name  = "fedimintd.ingress.hosts.p2p.host"
    value = "p2p.fedimint-${count.index + 1}.${var.base_url}"
  }

  set {
    name  = "fedimintd.config.fmApiUrl"
    value = "ws://fedimint-${count.index + 1}-fedimintd:8174"
  }

  set {
    name  = "fedimintd.config.fmP2pUrl"
    value = "fedimint://fedimint-${count.index + 1}-fedimintd:8173"
  }


 // ######### guardianui #########
  set {
    name  = "guardianui.ingress.enabled"
    value = "true"
  }

  set {
    name  = "guardianui.ingress.hosts[0].host"
    value = "web.fedimint-${count.index + 1}.${var.base_url}"
  }

  set {
    name  = "guardianui.ingress.hosts[0].paths[0].path"
    value = "/"
  }

  set {
    name  = "guardianui.ingress.hosts[0].paths[0].pathType"
    value = "ImplementationSpecific"
  }

  set {
    name  = "guardianui.config.reactAppFmConfigApi"
    value = "ws://api.fedimint-${count.index + 1}.${var.base_url}"
  }
}


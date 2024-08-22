resource "helm_release" "gatewayd" {
  name             = "gatewayd-ldk"
  #repository       = "https://ngutech21.github.io/fedimint-charts/"
  chart            = "../../charts/gatewayd"
  namespace        = var.namespace
  create_namespace = true
  timeout          = 180
  wait             = false
  count            = 1


  # for ldk gatewayd >= 0.5.0 is required
  set {
    name  = "gatewayd.image.tag"
    value = "9d6fb7b4a55f4773e743c56e21b3c9eca3d3181f"
  }
  
  set {
    name  = "gatewayd.config.fmBackendType"
    value = "ldk"
  }

  set {
    name  = "gatewayd.ingress.enabled"
    value = "true"
  }

  
  set {
    name  = "gatewayd.config.fmGatewayApiAddr"
    value = "http://api.gateway.${var.base_url}"
  }

  set {
    name  = "gatewayd.ingress.hosts.api.host"
    value = "api.gateway.${var.base_url}"
  }

  set {
    name  = "gatewayui.ingress.enabled"
    value = "true"
  }

  set {
    name  = "gatewayui.ingress.hosts.web.host"
    value = "web.gateway.${var.base_url}"
  }

  set {
    name  = "gatewayui.config.reactAppFmGatewayApi"
    value = "http://api.gateway.${var.base_url}"
  }

}
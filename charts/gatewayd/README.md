# gatewayd

![Version: 0.2.1](https://img.shields.io/badge/Version-0.2.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.4.1](https://img.shields.io/badge/AppVersion-0.4.1-informational?style=flat-square)

Helm chart for deploying Fedimint LN-Gatewayd

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| ngutech21 |  |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| global.imagePullSecrets | list | `[]` |  |
| global.serviceAccount.create | bool | `false` | Specifies whether a service account should be created |
| global.serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials? |
| global.serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| global.serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| gatewayd.nameOverride | string | `""` |  |
| gatewayd.fullnameOverride | string | `""` |  |
| gatewayd.image.repository | string | `"fedimint/gatewayd"` |  |
| gatewayd.image.pullPolicy | string | `"IfNotPresent"` |  |
| gatewayd.image.tag | string | `"v0.4.1"` | Overrides the image tag whose default is the chart appVersion. |
| gatewayd.service.type | string | `"ClusterIP"` |  |
| gatewayd.service.api.port | int | `80` |  |
| gatewayd.storage.accessModes | string | `"ReadWriteOnce"` |  |
| gatewayd.storage.storageClassName | string | `""` |  |
| gatewayd.storage.size | string | `"5Gi"` |  |
| gatewayd.ingress.enabled | bool | `false` |  |
| gatewayd.ingress.className | string | `""` |  |
| gatewayd.ingress.annotations."nginx.ingress.kubernetes.io/proxy-read-timeout" | string | `"3600"` |  |
| gatewayd.ingress.annotations."nginx.ingress.kubernetes.io/proxy-send-timeout" | string | `"3600"` |  |
| gatewayd.ingress.annotations."nginx.ingress.kubernetes.io/proxy-buffering" | string | `"off"` |  |
| gatewayd.ingress.hosts.api.host | string | `"api.gateway.mydomain.com"` |  |
| gatewayd.ingress.tls | list | `[]` |  |
| gatewayd.probes.enabled | bool | `true` | Enable/disable API probes for healthcheck |
| gatewayd.probes.liveness | object | `{"failureThreshold":5,"initialDelaySeconds":21,"periodSeconds":10,"timeoutSeconds":1}` | If pod is starting up/healthy |
| gatewayd.probes.readiness | object | `{"failureThreshold":5,"initialDelaySeconds":5,"successThreshold":2,"timeoutSeconds":1}` | When to expose the pod to the service |
| gatewayd.tolerations | list | `[]` |  |
| gatewayd.affinity | object | `{}` |  |
| gatewayd.resources | object | `{}` |  |
| gatewayd.podSecurityContext | object | `{}` |  |
| gatewayd.securityContext | object | `{}` |  |
| gatewayd.podAnnotations | object | `{}` |  |
| gatewayd.podLabels | object | `{}` |  |
| gatewayd.config.fmGatewayFees | string | `"0,10000"` |  |
| gatewayd.config.fmGatewayPassword | string | `"thereisnosecondbest"` |  |
| gatewayd.config.fmGatewayApiAddr | string | `"http://gateway.mydomain.com"` |  |
| gatewayd.config.fmBackendType | string | `"lnd"` | The type of backend to use on of "lnd","ldk","cln". At the moment only lnd is supported |
| gatewayd.config.fmLndRpcAddr | string | `"https://ln.mydomain.com:10009"` | Address of the LND node that the gatewayd will connect to |
| gatewayd.additionalEnv | string | `nil` |  |
| gatewayui.nameOverride | string | `""` |  |
| gatewayui.fullnameOverride | string | `""` |  |
| gatewayui.image.repository | string | `"fedimintui/gateway-ui"` |  |
| gatewayui.image.pullPolicy | string | `"IfNotPresent"` |  |
| gatewayui.image.tag | string | `"0.4.1"` | Overrides the image tag whose default is the chart appVersion. |
| gatewayui.service.type | string | `"ClusterIP"` |  |
| gatewayui.service.port | int | `80` |  |
| gatewayui.ingress.enabled | bool | `false` |  |
| gatewayui.ingress.className | string | `""` |  |
| gatewayui.ingress.annotations | object | `{}` |  |
| gatewayui.ingress.hosts.web.host | string | `"web.gateway.mydomain.com"` |  |
| gatewayui.ingress.tls | list | `[]` |  |
| gatewayui.probes.enabled | bool | `true` | Enable/disable API probes for healthcheck |
| gatewayui.probes.liveness | object | `{"failureThreshold":5,"initialDelaySeconds":10,"periodSeconds":10,"timeoutSeconds":1}` | If pod is starting up/healthy |
| gatewayui.probes.readiness | object | `{"failureThreshold":5,"initialDelaySeconds":5,"successThreshold":2,"timeoutSeconds":1}` | When to expose the pod to the service |
| gatewayui.tolerations | list | `[]` |  |
| gatewayui.affinity | object | `{}` |  |
| gatewayui.resources | object | `{}` |  |
| gatewayui.podSecurityContext | object | `{}` |  |
| gatewayui.securityContext | object | `{}` |  |
| gatewayui.podAnnotations | object | `{}` |  |
| gatewayui.podLabels | object | `{}` |  |
| gatewayui.config.reactAppFmGatewayApi | string | `"http://gatewayd.fedimint.mydomain.com"` |  |
| gatewayui.config.reactAppFmGatewayPassword | string | `"thereisnosecondbest"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)

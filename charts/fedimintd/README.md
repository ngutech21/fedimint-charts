# fedimintd

![Version: 0.2.0](https://img.shields.io/badge/Version-0.2.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.4.1](https://img.shields.io/badge/AppVersion-0.4.1-informational?style=flat-square)

Helm chart for deploying fedimintd

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| global.imagePullSecrets | list | `[]` |  |
| global.serviceAccount.create | bool | `false` | Specifies whether a service account should be created |
| global.serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials? |
| global.serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| global.serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| fedimintd.nameOverride | string | `""` |  |
| fedimintd.fullnameOverride | string | `""` |  |
| fedimintd.image.repository | string | `"fedimint/fedimintd"` |  |
| fedimintd.image.pullPolicy | string | `"IfNotPresent"` |  |
| fedimintd.image.tag | string | `"v0.4.1"` | Overrides the image tag whose default is the chart appVersion. |
| fedimintd.service.type | string | `"ClusterIP"` |  |
| fedimintd.service.p2p.port | int | `8173` |  |
| fedimintd.service.api.port | int | `8174` |  |
| fedimintd.storage.accessModes | string | `"ReadWriteOnce"` |  |
| fedimintd.storage.storageClassName | string | `""` |  |
| fedimintd.storage.size | string | `"5Gi"` |  |
| fedimintd.ingress.enabled | bool | `false` |  |
| fedimintd.ingress.className | string | `""` |  |
| fedimintd.ingress.annotations."nginx.ingress.kubernetes.io/proxy-read-timeout" | string | `"3600"` | websocket support for fedimintd using ingress-nginx |
| fedimintd.ingress.annotations."nginx.ingress.kubernetes.io/proxy-send-timeout" | string | `"3600"` |  |
| fedimintd.ingress.annotations."nginx.ingress.kubernetes.io/proxy-buffering" | string | `"off"` |  |
| fedimintd.ingress.hosts.api.host | string | `"api.fedimintd-1.mydomain.com"` |  |
| fedimintd.ingress.hosts.p2p.host | string | `"p2p.fedimintd-1.mydomain.com"` |  |
| fedimintd.ingress.tls | list | `[]` |  |
| fedimintd.probes.enabled | bool | `true` | Enable/disable API probes for healthcheck |
| fedimintd.probes.liveness | object | `{"failureThreshold":5,"initialDelaySeconds":21,"periodSeconds":10,"timeoutSeconds":1}` | If pod is starting up/healthy |
| fedimintd.probes.readiness | object | `{"failureThreshold":5,"initialDelaySeconds":5,"successThreshold":2,"timeoutSeconds":1}` | When to expose the pod to the service |
| fedimintd.tolerations | list | `[]` |  |
| fedimintd.affinity | object | `{}` |  |
| fedimintd.resources | object | `{}` |  |
| fedimintd.podSecurityContext | object | `{}` |  |
| fedimintd.securityContext | object | `{}` |  |
| fedimintd.podAnnotations | object | `{}` |  |
| fedimintd.podLabels | object | `{}` |  |
| fedimintd.config.fmBitcoinRpcKind | string | `"esplora"` |  |
| fedimintd.config.fmBitcoinRpcUrl | string | `"https://mutinynet.com/api/"` |  |
| fedimintd.config.fmBitcoinNetwork | string | `"signet"` |  |
| fedimintd.config.fmApiUrl | string | `"ws://api.fedimintd-1.mydomain.com"` |  |
| fedimintd.config.fmP2pUrl | string | `"fedimint://p2p.fedimintd-1.mydomain.com"` |  |
| fedimintd.config.fmRelNotesAck | string | `"0_4_xyz"` |  |
| fedimintd.additionalEnv[0].name | string | `"RUST_LOG"` |  |
| fedimintd.additionalEnv[0].value | string | `"debug"` |  |
| guardianui.nameOverride | string | `""` |  |
| guardianui.fullnameOverride | string | `""` |  |
| guardianui.image.repository | string | `"fedimintui/guardian-ui"` |  |
| guardianui.image.pullPolicy | string | `"IfNotPresent"` |  |
| guardianui.image.tag | string | `"0.4.1"` | Overrides the image tag whose default is the chart appVersion. |
| guardianui.service.type | string | `"ClusterIP"` |  |
| guardianui.service.port | int | `3000` |  |
| guardianui.ingress.enabled | bool | `false` |  |
| guardianui.ingress.className | string | `""` |  |
| guardianui.ingress.annotations | object | `{}` |  |
| guardianui.ingress.hosts.web.host | string | `"web.fedimint-1.mydomain.com"` |  |
| guardianui.ingress.tls | list | `[]` |  |
| guardianui.probes.enabled | bool | `true` | Enable/disable API probes for healthcheck |
| guardianui.probes.liveness | object | `{"failureThreshold":5,"initialDelaySeconds":10,"periodSeconds":10,"timeoutSeconds":1}` | If pod is starting up/healthy |
| guardianui.probes.readiness.initialDelaySeconds | int | `5` |  |
| guardianui.probes.readiness.failureThreshold | int | `5` |  |
| guardianui.probes.readiness.successThreshold | int | `2` |  |
| guardianui.probes.readiness.timeoutSeconds | int | `1` |  |
| guardianui.tolerations | list | `[]` |  |
| guardianui.affinity | object | `{}` |  |
| guardianui.resources | object | `{}` |  |
| guardianui.podSecurityContext | object | `{}` |  |
| guardianui.securityContext | object | `{}` |  |
| guardianui.podAnnotations | object | `{}` |  |
| guardianui.podLabels | object | `{}` |  |
| guardianui.config.reactAppFmConfigApi | string | `"ws://api.fedimintd-1.mydomain.com"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)

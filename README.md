# Fedimint Kubernetes Helm Charts

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.3.1](https://img.shields.io/badge/AppVersion-0.3.1-informational?style=flat-square)

Helm chart for deploying fedimintd inside a kubernetes cluster


# Usage

## Clone the repo

```
git clone https://github.com/ngutech21/fedimint-charts.git
cd charts/fedimintd
```

## Modify values.yaml
- Set valid domain names for the ingress.
- etc.

## Install the chart

```
helm upgrade --install fedimint-mutinynet -n fedimint --create-namespace --values values.yaml
```




## Configuration

The following table lists the configurable parameters of the chart and their default values, and can be overwritten via the helm --set flag.

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| global.imagePullSecrets | list | `[]` |  |
| global.serviceAccount.create | bool | `false` |  |
| global.serviceAccount.automount | bool | `true` |  |
| global.serviceAccount.annotations | object | `{}` |  |
| global.serviceAccount.name | string | `""` |  |
| fedimintd.nameOverride | string | `""` |  |
| fedimintd.fullnameOverride | string | `""` |  |
| fedimintd.image.repository | string | `"fedimint/fedimintd"` |  |
| fedimintd.image.pullPolicy | string | `"IfNotPresent"` |  |
| fedimintd.image.tag | string | `"v0.3.3"` |  |
| fedimintd.service.type | string | `"ClusterIP"` |  |
| fedimintd.service.p2p.port | int | `8173` |  |
| fedimintd.service.api.port | int | `8174` |  |
| fedimintd.storage.accessModes | string | `"ReadWriteOnce"` |  |
| fedimintd.storage.storageClassName | string | `""` |  |
| fedimintd.storage.storage | string | `"5Gi"` |  |
| fedimintd.ingress.enabled | bool | `true` |  |
| fedimintd.ingress.className | string | `""` |  |
| fedimintd.ingress.annotations."nginx.ingress.kubernetes.io/proxy-read-timeout" | string | `"3600"` |  |
| fedimintd.ingress.annotations."nginx.ingress.kubernetes.io/proxy-send-timeout" | string | `"3600"` |  |
| fedimintd.ingress.annotations."nginx.ingress.kubernetes.io/proxy-buffering" | string | `"off"` |  |
| fedimintd.ingress.hosts.api.host | string | `"api.fedimintd-1.mydomain.com"` |  |
| fedimintd.ingress.hosts.p2p.host | string | `"p2p.fedimintd-1.mydomain.com"` |  |
| fedimintd.ingress.tls | list | `[]` |  |
| fedimintd.probes.enabled | bool | `true` |  |
| fedimintd.probes.liveness.initialDelaySeconds | int | `21` |  |
| fedimintd.probes.liveness.periodSeconds | int | `10` |  |
| fedimintd.probes.liveness.failureThreshold | int | `5` |  |
| fedimintd.probes.liveness.timeoutSeconds | int | `1` |  |
| fedimintd.probes.readiness.initialDelaySeconds | int | `5` |  |
| fedimintd.probes.readiness.failureThreshold | int | `5` |  |
| fedimintd.probes.readiness.successThreshold | int | `2` |  |
| fedimintd.probes.readiness.timeoutSeconds | int | `1` |  |
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
| guardianui.nameOverride | string | `""` |  |
| guardianui.fullnameOverride | string | `""` |  |
| guardianui.image.repository | string | `"fedimintui/guardian-ui"` |  |
| guardianui.image.pullPolicy | string | `"IfNotPresent"` |  |
| guardianui.image.tag | string | `"0.3.1"` |  |
| guardianui.service.type | string | `"ClusterIP"` |  |
| guardianui.service.port | int | `3000` |  |
| guardianui.ingress.enabled | bool | `true` |  |
| guardianui.ingress.className | string | `""` |  |
| guardianui.ingress.annotations | object | `{}` |  |
| guardianui.ingress.hosts[0].host | string | `"web.fedimint-1.mydomain.com"` |  |
| guardianui.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| guardianui.ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| guardianui.ingress.tls | list | `[]` |  |
| guardianui.probes.enabled | bool | `true` |  |
| guardianui.probes.liveness.initialDelaySeconds | int | `10` |  |
| guardianui.probes.liveness.periodSeconds | int | `10` |  |
| guardianui.probes.liveness.failureThreshold | int | `5` |  |
| guardianui.probes.liveness.timeoutSeconds | int | `1` |  |
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
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

- [fedimintd](charts/fedimintd/README.md)
- [gatewayd](charts/gatewayd/README.md)


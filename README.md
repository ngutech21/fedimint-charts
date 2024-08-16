# Fedimint Kubernetes Helm Charts
![Build Status](https://github.com/ngutech21/fedimint-charts/actions/workflows/release.yml/badge.svg) 
![License](https://img.shields.io/badge/License-MIT-green?style=flat-square) 


Helm chart for deploying fedimintd and gatewayd inside a kubernetes cluster


# Usage
```
helm repo add fedimint https://ngutech21.github.io/fedimint-charts/
helm repo update
```



## Documentation
Make sure to update the values.yaml file with the necessary configurations before running the installation commands.

- [fedimintd](charts/fedimintd/README.md)
- [gatewayd](charts/gatewayd/README.md)



## Installation Steps
To install `fedimintd`, run the following command:

```
helm upgrade --install fedimint-mutinynet fedimint/fedimintd -n fedimint --create-namespace --values values.yaml
```

To install `gatewayd`, run the following command:

```
helm upgrade --install gatewayd-mutinynet fedimint/gatewayd -n fedimint --create-namespace --values values.yaml
```


## Examples
For a practical example of how to use these Helm charts with Terraform, refer to the Terraform example provided in this repository. This example demonstrates how to setup a federation with 4 or more guardians and 1 gateway.

- [Terraform Example](examples/terraform/README.md)








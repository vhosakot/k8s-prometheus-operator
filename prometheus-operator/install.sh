#!/usr/bin/env bash

set -x

# download open source prometheus-operator v0.60.1 manifest bundle.yaml,
# see https://github.com/prometheus-operator/prometheus-operator/releases/tag/v0.60.1
# and docs https://github.com/prometheus-operator/prometheus-operator/blob/main/Documentation/user-guides/getting-started.md
#
# wget https://github.com/prometheus-operator/prometheus-operator/releases/download/v0.60.1/bundle.yaml

# kubectl create ns ep
kubectl create -f bundle.yaml
kubectl create -f rbac.yaml
kubectl create -f sample_app.yaml
kubectl create -f prometheus_CRs.yaml
kubectl create -f prometheus_service.yaml

#!/usr/bin/env bash

set -x

kubectl delete -f sample_app.yaml
kubectl delete -f prometheus_CRs.yaml
kubectl delete -f prometheus_service.yaml
kubectl delete -f rbac.yaml
kubectl delete -f bundle.yaml
# kubectl delete ns ep

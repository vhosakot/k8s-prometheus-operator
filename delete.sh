#!/usr/bin/env bash

set -x

# delete prometheus-operator
cd prometheus-operator
./delete.sh
cd ..

# uninstall prometheus-node-exporter
helm uninstall ep-node-exporter --namespace ep

# uninstall prometheus-kube-state-metrics
helm uninstall ep-kube-state-metrics --namespace ep

kubectl delete ns ep

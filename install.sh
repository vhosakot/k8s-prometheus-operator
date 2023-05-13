#!/usr/bin/env bash

set -x

# install prometheus-operator
kubectl create ns ep
cd prometheus-operator
./install.sh
cd ..

# install prometheus-node-exporter
helm install ep-node-exporter prometheus-node-exporter/ --namespace ep

# install prometheus-kube-state-metrics
helm install ep-kube-state-metrics kube-state-metrics/ --namespace ep

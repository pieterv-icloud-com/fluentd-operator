#!/bin/bash

kubectl delete instance k8-magic

kubectl delete operatorversion fluentd-operator-0.1.0

kubectl delete operator fluentd-operator

kubectl kudo install ./operator --skip-instance

kubectl apply -f k8-magic-instance.yaml

 kubectl get instance k8-magic -o yaml
#!/bin/bash
/bin/echo '---' >> ./cm.yaml
/usr/bin/kubectl -n openshift-monitoring get cm kubelet-serving-ca-bundle -o yaml >> ./cm.yaml
/bin/echo '---' >> ./cm.yaml
/usr/bin/kubectl -n openshift-monitoring get cm serving-certs-ca-bundle -o yaml >> ./cm.yaml

/bin/echo '---' >> ./cm.yaml
/usr/bin/kubectl -n openshift-monitoring get secrets kube-etcd-client-certs -o yaml >> ./cm.yaml

/usr/bin/sed -i '/resourceVersion/d' ./cm.yaml
/usr/bin/sed -i '/namespace/d' ./cm.yaml
/usr/bin/sed -i '/creationTimestamp/d' ./cm.yaml
/usr/bin/sed -i '/uid/d' ./cm.yaml
/usr/bin/kubectl apply -f ./cm.yaml

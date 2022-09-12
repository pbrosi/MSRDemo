#!/bin/sh
#

yes | /usr/local/bin/rancher login ${RANCHER_URL} --token ${RANCHER_TOKEN}
/usr/local/bin/rancher kubectl delete ingress msr-ingress
/usr/local/bin/rancher kubectl delete svc msr-service
/usr/local/bin/rancher kubectl delete deployment msr-deployment

echo "Deleted"

/usr/local/bin/rancher kubectl create -f ${WORKSPACE}/PushCustomerImageToK8.yaml 

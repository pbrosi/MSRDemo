#!/bin/sh
#

rancher login ${RANCHER_URL} --token ${RANCHER_TOKEN}
$1
rancher kubectl create -f ${WORKSPACE}/PushCustomerImageToK8.yaml 

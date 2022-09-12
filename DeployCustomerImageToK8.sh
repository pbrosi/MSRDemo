#!/bin/sh
#

yes | rancher login ${RANCHER_URL} --token ${RANCHER_TOKEN}
rancher kubectl create -f ${WORKSPACE}/PushCustomerImageToK8.yaml 

#!/bin/sh
#

yes | /usr/local/bin/rancher login ${RANCHER_URL} --token ${RANCHER_TOKEN}
/usr/local/bin/rancher kubectl create -f ${WORKSPACE}/PushCustomerImageToK8.yaml 

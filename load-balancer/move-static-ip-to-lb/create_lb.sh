#!/usr/bin/env bash

#requires
if [[ $# -ne 2 ]]; then echo "usage ./create_lb LB_NAME IP_ADDRESS" && exit 1; fi

LB_NAME="$1" && echo "load balancer name: ${1}"
EXTERNAL_IP="$2" && echo "external IP : ${2}"

echo "creating lb with static ip address"
YC_FOLDER_ID=$(yc config get folder-id) #id каталога ( foler где находится статический адрес)



cat > create-lb.json <<EOF
{
    "folderId": "${YC_FOLDER_ID}",
    "name": "${LB_NAME}",
    "regionId": "ru-central1",
    "type": "EXTERNAL",
    "listenerSpecs": [
      {
        "port": "80",
        "protocol": "TCP",
        "externalAddressSpec": {
          "address": "${EXTERNAL_IP}",
          "ipVersion": "IPV4",
          "regionId": "ru-central1"
      }
      }
    ],
}
EOF


curl -X POST \
  -H "Authorization: Bearer $(yc iam create-token)" \
	-H "Content-Type: application/json" \
	-k "https://load-balancer.api.cloud.yandex.net/load-balancer/v1alpha/networkLoadBalancers" \
  -d @create-lb.json
rm -rf create-lb.json

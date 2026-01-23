#!/bin/bash

UID=$(id -u)

if [ "$UID" != "0" ]; then
  echo "Must be run as root"
  exit 1
fi

curl -sfL https://get.k3s.io | sh -s - --write-kubeconfig-mode 644 --disable servicelb,traefik

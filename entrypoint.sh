#!/usr/bin/env bash
set -euo pipefail
while :; do
    NAMESERVER="$(dig +short kube-dns.kube-system.svc.cluster.local)"
    echo "nameserver ${NAMESERVER}
search default.svc.cluster.local svc.cluster.local cluster.local
options ndots:5" > /host_etc/resolv.conf
    sleep 10
done
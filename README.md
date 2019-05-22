⚠️ Use at your own risk, this has not been tested very well yet.

Kubernetes cluster nodes do not use `kube-dns` by default, and so won't resolve in-cluster service DNS names at the host-level. This repo provides a `DaemonSet` that updates `/etc/resolv.conf` on all of the hosts to use `kube-dns`. 

## Deploy

```bash
kubectl apply -f https://raw.githubusercontent.com/snormore/kube-node-dns/master/daemonset.yaml
```

## Example

This issue is often encountered when trying to set up the NFS example from https://github.com/kubernetes/examples/tree/master/staging/volumes/nfs, where the service name resolution fails because the cluster host does not use `kube-dns`: https://github.com/kubernetes/kubernetes/issues/44528

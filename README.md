# Debug Console

The pod including debug tools, e.g. tcpdump, lshca, ufmcli

## Install

```shell
kubectl apply -f https://bit.ly/debug-console
# or kubectl apply -f https://raw.githubusercontent.com/openbce/debug-console/main/pod.yaml
kubectl exec -it debug-console -- /bin/bash
```

## Examples

### UFM

```
root@host:/# export UFM_ADDRESS=https://<ufm address>
root@host:/# export UFM_TOKEN=<ufm token>
root@host:/# ufmcli list
IGNORING SERVER CERT, Please ensure that I am removed to actually validate TLS.
Name           Pkey      IPoIB     MTU       Rate      Level
api_pkey_0x5   0x5       true      2         2.5       0
api_pkey_0x6   0x6       true      2         2.5       0
management     0x7fff    true      2         2.5       0
```
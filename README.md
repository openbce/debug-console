# Debug Console

The pod including debug tools, e.g. tcpdump, lshca, ufmcli

## Install

```shell
kubectl apply -f https://bit.ly/debug-console
```

or

```
kubectl apply -f https://raw.githubusercontent.com/openbce/debug-console/main/pod.yaml
```

## Examples

### UFM

```
root@host-client:/$ kubectl exec -it debug-console -- /bin/bash
root@host-worker:/# export UFM_ADDRESS=https://<ufm address>
root@host-worker:/# export UFM_TOKEN=<ufm token>
root@host-worker:/# ufmctl list
IGNORING SERVER CERT, Please ensure that I am removed to actually validate TLS.
Name           Pkey      IPoIB     MTU       Rate      Level
api_pkey_0x5   0x5       true      2         2.5       0
api_pkey_0x6   0x6       true      2         2.5       0
management     0x7fff    true      2         2.5       0
```

### HCA

```
root@host-client:/$ kubectl exec -it debug-console -- /bin/bash
root@host-worker:/# hcactl list
----------------------------------------------
ID             : 15B3:0009
Model          : MT43244 BlueField-3 integrated ConnectX-7 network controller
Vendor         : Mellanox Technologies
FW             : 32.38.1002
Board          : MT_0000000884

    Name           Slot           Node GUID                Port GUID                LID            Subnet                   LinkType       State          PhysState      
    mlx5_2         0000:02:00.0   946d:ae03:0051:9774      -                        0              -                        Eth            Active         LinkUp         
    mlx5_3         0000:02:00.1   946d:ae03:0051:9775      -                        0              -                        Eth            Active         LinkUp         


----------------------------------------------
ID             : 15B3:0054
Model          : MT2910 Family [ConnectX-7]
Vendor         : Mellanox Technologies
FW             : 28.98.2400
Board          : MT_0000000894

    Name           Slot           Node GUID                Port GUID                LID            Subnet                   LinkType       State          PhysState      
    mlx5_0         0000:c1:00.0   e8eb:d303:0098:2ebc      e8eb:d303:0098:2ebc      65535          fe80:0000:0000:0000      IB             Down           Disabled       
    mlx5_1         0000:c1:00.1   e8eb:d303:0098:2ebd      e8eb:d303:0098:2ebd      65535          fe80:0000:0000:0000      IB             Down           Disabled       

```

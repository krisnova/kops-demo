# Single Master Public Cluster


<p align="center">
  <img src="k8s-aws-single-public-master.png"> </image>
</p>



## Route 53 DNS

| Name                                                              | Type   |  Value                                            |                                          
| ----------------------------------------------------------------- | ------ |:---------------: |
| api.single-master-public.nivenly.com.                             | A      | 	52.26.202.217   |
| api.internal.single-master-public.nivenly.com.                    | A      | 	172.20.51.133   |
| etcd-events-us-west-2a.internal.single-master-public.nivenly.com. | A      | 	172.20.51.133   |
| etcd-us-west-2a.internal.single-master-public.nivenly.com.        | A      | 	172.20.51.133   |


## Getting to the dashboard (via kubectl proxy)

```
kubectl create -f https://rawgit.com/kubernetes/dashboard/master/src/deploy/kubernetes-dashboard.yaml
kubectl proxy 
open http://127.0.0.1:8001/api/v1/proxy/namespaces/kube-system/services/kubernetes-dashboard/#/persistentvolume?namespace=_all
```

## Getting to the dashboard (public A record)

```
https://api.single-master-public.nivenly.com/api/v1/proxy/namespaces/kube-system/services/kubernetes-dashboard/#/persistentvolume?namespace=_all
```
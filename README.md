### Check Point
1. roles/k8s/defaults/main.yml
   ```
   controlplane_IP: 172.16.0.201
   ....
   ```
2. kubernetes version on 'roles/k8s/tasks/main.yml' file
   ```
   - name: config repository for kubernetes
     yum_repository:
       name: kubernetes
       description: kubernetes repo
       baseurl: https://pkgs.k8s.io/core:/stable:/v1.36/rpm/
       enabled: yes
       gpgcheck: yes
       repo_gpgcheck: yes
       gpgkey:
         - https://pkgs.k8s.io/core:/stable:/v1.36/rpm/repodata/repomd.xml.key
roles/client/vars/main.yml
```
KUBE_VERSION: 'v1.36.0'
```

### Calico Install 
```
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.32.1/manifests/v1_crd_projectcalico_org.yaml
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.32.1/manifests/tigera-operator.yaml
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.32.1/manifests/custom-resources.yaml
```




Reference
https://docs.tigera.io/calico/latest/getting-started/kubernetes/quickstart

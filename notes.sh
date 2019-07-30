alias k=kubectl

k create configmap db-config --from-env-file=config.txt
k get configmap
k get configmap db-config -o yaml
k run backend --image=nginx --restart=Never -o yaml --dry-run > backend.yaml
k create -f backend.yaml
k get pods
k exec backend --it --bin/sh
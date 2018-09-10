# README #

Here we have some useful info 
* [Learn Markdown](https://bitbucket.org/tutorials/markdowndemo)

### What is needed ###

* Kubernetes v1.9
* Private docker hub
* kube-lego

### Build and push to private repo ###

* sudo docker build --no-cache -t "image name" .
  * image name example: ytz:beta-1.1.0
* sudo docker tag "image name" localhost:5000/"image name"
* sudo docker push localhost:5000/ytz-1.0.8

### Create Private Repo ###

* docker run -d -p 5000:5000 --restart=always --name registry registry:2

### Frequently used Command ###

* kubectl apply -f
* kubectl delete -f
* kubectl describe [resource type] [resource name]
* kubectl get all
* kubectl logs [pod name]
* kubectl describe pods --namespace=nginx-ingress

### Description ###

* This is the beta build config for dforcepro server.
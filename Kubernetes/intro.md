# Kubernetes:

- Kubernetes is container orchestration technology.

- [ definations ]( definations )
- [ Commands ]( Commands )

## definations
 ### Container Orchestration:
- Is automatically scale up or scale down the containers based on the traffic..
### Architecture:
-  Node: is where k8's are installed..is a worker machine where containers are launched in k8's.

### Cluster: 
- it's a group of nodes and multiple nodes will help to share the load.. 

### Master:
- Is another node where k8's is installed and it is responsible for creating and managing the nodes. 

### Kubernetes componests and request flow within k8's digram 
![screenshorts](https://github.com/SrinivasEsapalli/linux/blob/master/shell_script/practise/Screenshorts/screen%201.jpg)

### contiainer runtime interface(CRI): 
- Before only k8's are working with dockers so by creating CRI by folllwing (open container initiatiative) any one can work with it.

### Container :
 - it's  a feature in docker to support Kubernetes container runtime interface(CRI) and then it got sepearated from docker andi it's started working by it's own..with it's own CLI names CTR... or we can use nerctl

### POD:
 - A pod is the smallest unit you can create in a Kubernetes.. object and it also a instance of the application.

### Multi-Container POD:
 - We cannot create multi containers of same kind in a pod but we can create a helper container to help the main container.. like creating User or processing the files etc..
### Recreate: 
- In this strategy all the pods of the application will be terminated once and created again. Here the major drwaback is like if we delete all the pods at a time the application will have some downtime.

### rolling update: 
- It is the default deployment strategy..here one pod will be terminated alternatively other pod will be created..the advantage of this feature is we create the pods alternatively so there will be no down time for the application.
### Deployements:
 Deployments are same like replica set with additional features for pods like they can update delete create pods and same time they can pause for some time and resume the updates later..

kubectl get all to get all created by deployments like deployment name, pod and replicaset.

### Rollout: 
- It will create new version in new replica set..basically rollout is useful for getting back to older versions..


## Commands:
### Kubectl apply -f pod_name 
- To create a pod
### kubectl get pod 
- To get the availale pods.
### kubectl apply -f service 
- Used for service creation..
### kubectl get Service 
- To get services..
### kubectl get pods -o wide 
- To get the wider range pod details with the ip address..

### kubectl run nginx --image=nginx 
- To create a pod from the command line by using the image..


Ex: Pod
apiVersion: v1
kind: Pod
metadata:
  name: demopod
  labels:
    version: 1.0.0
    Type: front-end-app
spec:
  containers:
    - name: democontainer
      image: nginx


### winpty kubectl exec -it nginx-deploy2-5f846df7fd-hzztf -- //bin//bash 
- To login into pod

## To change the index.html in nginx
### cd /usr/share/nginx/html 
To move to html directory

### install api update -y
- updating api
### api install vim
- to change it to vim
- change index.html and save
### kubectl describe pod nginx 
- gives the list of details about the pod and container..
### kubectl  get nodes -o wide 
- To get the all the information about the nodes..

### kubectl delete pod webapp 
- To delete the pods

### kubectl get node -o wide
To get the external Ip of the node.

### kubernetes manifest files:
- Pod definition file or Manifest files
#### kubectl run redis --image=redis123 --dry-run -0 yaml
#### kubectl run=client redis --image=redis123 --dry-run -0 yaml
#### kubectl run=client redis --image=redis123 --dry-run -0 yaml > redis.yaml

## Kubernetes Controllers:
 ### Replication Controller:
      - This is the controller helps to call or start the controller when the main controller fails..
     - it will create multiple pods to share the load..

### Replica set 
is the new version..
it's with selectors and lables these will help to select or monitor the particular labels out of group..

### kubectl create -f replicaset.yaml 
-> to create the file
### kubectl get replicaset
### kubectl delete replicaset file_name 
-> to delete replica set
### kubectl replace -f replicaset_filename 

### kubectl scale replicaset replicasetdemo.yaml --replicas=2
To scale them at commandline
### kubectl describe replicaset replicaset_name ...> to get all the details

### kubectl edit rs replica-set-name
- To open replica set file in edit mode



### kubectl rollout status deployment_name 
- To see the status of the rollout..

### Kubectl rollout history deployment_name 
- To check all the revisions


### kubectl rollout undo deployment_filename.yaml 
- To rollback to older version 

### kubectl set image deployment_name nginx=nginx:1.9.1 
we can Update the image versions with this command









  


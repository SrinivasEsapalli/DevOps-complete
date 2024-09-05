

- [ EC2 ](#Ec2)
- [ EC2 Image Builder ](#EC2-Image-Builder)
- [ Elastic Bean stalk ](#Elastic-Bean-stalk)
- [ LightSail ](#LightSail)
- [ Elastic Container service ](#Elastic-Container-service)
- [ Elastic kubernetes service ](#Elastic-kubernetes-service)
- [ Elastic Container Registry(ECR)](#Elastic-Container-Registry(ECR))




## EC2
- Elastic Compute Cloud (EC2)
-  Is an Instance (Server) which is provided by AWS where we can  deploy our applicatoins..

### Instance types:
types
### General purpose ec2 instances
- These are like general purpose ec2 instances..
- used for web server etc..
### Compute Optimized
- These are benefit for compute bound applications..
- if we need highr memory and cpu we can go with this type.

### Memory Optimized
- These are designed for fast performance for workloads

### Storage Optimized
-  gret for I/o operations.


### GPU instances
- These are used for high performance GPU like Machine learning etc..

### EC2-AMI
-  AMazon machine image
- we have ami for every operating system.
- It's just like a blue print we can create infinite instances using this AMI.

- Public AMI - These are available for all of the users.
- Private AMI - These are customized AMI created by users for their specific applications.
- these are secured and accessed by owners are specific aws accounts..
- shared AMI - These are shared with specifi aws accounts..
- ssh is used to connect to the instance using the instance..

### security group
- we need to create security groups for additional security..
- we have inbound and outbound rules for traffic..

### EC2 instance placement group
- types
### Cluster placement group
- places Ec2 instances as close to another..
- it's great for applications that required low netwokr latency and high network through put..

### partition placement group
- here the instances are spread across logical partitions..
- instances in one partitions not share hardware with the instances in other partitions.
- it is suitable for distributed and hadddop workloads.

### spread placement groups
- it spreads our instances in underlined hardware groups..


### Ec2 purchasing options:
- on demand - when ever we need we can go and buy instanmces..
- spot instance - it's like buying unsused instances at a offers or deals by AWS.
- savings plan - buying the instances at a fixed time like monthly..
- Reserved instance - it's like buying the instancs for yearly etc..
- Dedicated host - we get physical ec2 server dedicated for our use..
- dedicated instance - you will get dedicated server to deploy all the ec2 instances..


## EC2 Image Builder
- It is a service which allows to automate creations and management and deployment of customized AMI images..
- while creating this org have a golder images which is the combination of software,configurations etc..

- Image creation process

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2035.jpg)
 

- build - choose base image then add or remove the softwares from base image 
- customize - customizes setting and scripts with build components.
- Test - Test the cusomized image.
- Distribute - Distribute AMI's to aws regions and aws accounts.
- Run - deploy the image i,e creating the instances from custom image. 

Ec2- image-builder features:
- Automated the image creation.
- we can create golden image i,e stnadarized image we can use acrosss organization..
- secure
- it helps to build both virtual machines and container images..
- It will help for versioning so it will help to rollbacj if necessaary

### Elastic Network Interface(ENI)
- it a virtual network interface attached to a instance in a VPC.
- These can have multiple IP addresses..
- It is used to seperating networking interface from Ec2 instances and we can assigm this another ec2 . It is like EBS voulmes we removed and attched to another VPC..
- but primary ENI will be associated directly with EC2 instances at the time  of creation and we cannot  remove this from the instance even in the stopped stage of the instance. It wil auto deleted at instance termination.
- we can attach secondary ENI to an instance and these can be detached from instance.. 
- If we want to assign static ip address to an ENI we can associate an elastic IP and we can associate security groups with the ENI..
- Flow logs can be enabled for ENI to kepp track of the IP traffic going to and from the network interface..


### Elastic Bean stalk
- It is created to deploy and manage the applications in AWS cloud easily without having to learn the infrastructure that needs to run the application..
- like elastic bean stalk will handle  all  VPC, subnets,load balancers, RDS  etc..

### LightSail

- virtual private server provider.
- It will have everything instances,containers, database and storage and Networking and DNS. it's Just like ec2 with simplified configuration and administrations.
- by using lifesail we can deploy virtual servers, containers, Loaf Balancers, Managed databases etc..

## Elastic Container service
## ECS(Elastic container service)
- containers are packages  with the required software, library,dependencys to run a patticular software..
- container orchestrators are brains of a containerized environments. They do all tasks like deploying containers across all available servers, load balancing request to containers.
- providing container to container connectivity.
-  Restrating failed containers.
- Moving containers whern hosts fail
Ex: Kubernetes, ECS. APache Mesos

### ECS
- Ecs is managed by amazon and it is fully managed container orchestration service that helps manage and scale containerized applications.
- containers run on ec2 instances or fargate.


- EC2
![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2036.jpg)

- control plane will act as brain.
- With ec2 we need to manage the worker node i,e install docker, ECS Agent, Firewall, Patches etc in the cluster then ecs will manages the containers and here we will get full control of the infrastructure since we are configuring it.


- Fargate
![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2037.jpg)

- by using fargate once the application is ready just need to send the config file to the ECS control plane..
 - the control will check config and create servers on demand..
 - no need to provison or maintaintain ec2 sercvices here fargate will do it for us..

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2038.jpg)

### ECS Task
- task is the Blue print that describes how containers should launch..
- how much CPU/MEM etc..
- what are the images/ports/volumes we need to run..

### ECS Task Defination
- It is the blue print for creating a container in ECS..
- From this task defination then we can create the tasks..

### ECS Service
- A service ensures that a certain number of tasks that are running at all times.
- It's just like manager it will restart container that have exited/crashed..
- EC2 instance fails, the service will restart task in a working EC2 instance..

### load balancers
- A load balancer can be assigned to route external traffic to your service. 




## Elastic kubernetes service
### EKS(Elastic kubernetes service)
- Here aws manages the control plane(api server, Scheduler, Controller Manager, etcd)
- Aws manages provisioning and maintaining master nodes..
- scaling and backups 
- worker node handled by user.
- we get securing k8's and we get access to other aws services..

### worker nodes
- self managed nodes
    - user need maintain ec2, updates, security patches etc 
    - we need to register node with control plane
    - we need do config like kubelet, kube-proxy, c-runtime.. 
- managed node group 
    - Automated the provisioning and lifecycle management of ec2 nodes..
    - we run speciall EKS and optimized images.
    - Every node is a part of auto scalling group which are managed for you by EKS.
- Fargate
    - It follows serverless architecture..
    - fargate will create worker nodes on demand.
    - No need to maintain ec2 servers.


## Elastic Container Registry(ECR)
- It is just like docker hub priovate registry we can push our docker images here..
- It is a Fully managed AWS Service.








# VPC - Virtual private cloud
- we have a deafult VPC for each region.
- default vpc CIDR range - 172.31.0.0/16 - 65536

[ Subnet ](Subnet)
[  Router table ](Router-table)
[ Intrenet Gateway ](Intrenet-Gateway)
[ NAT Gateway ](NAT-Gateway)
[ DNS ](DNS)
[ Elastic IP ](Elastic-IP)
[ Security Groups ](Security-Groups)
[ load balancers ](load-balancers)
[ VPN ](VPN)
[ VPC Peering ](VPC-Peering)
[ Transit Gateway ](Transit-Gateway)



## Subnet
- Vpc has multilple subnets
- the CIDR range of subnet is between the CIDR range of vpc..
## Router table
- Router table range is used to route traffic between subnets and in and out of vpc.
- one route table may have many subnets but one subnet should have only one route table..
-Every VPC has a router which is responsible for routing traffic between subnets as well as in and out of a VPC
The router has an interface in every subnet of the VPC and is reachable from the network + 1 address of each subnet
Route table is a set of rules the router uses to forward network traffic - each rule is referred to as a route
The router looks at the destination IP of a packet leaving the subnet and will find a matching route by checking the destination column
Once matched with a destination, the packet will be forwarded to the respective Target column of the route
route tables have exactly one route by default, which is the local route (2 local routes will be created if IPv6 is enabled for VPC)
Every subnet is associated with one route table
Each VPC has one default route table
Multiple subnets can be associated with a single route table

## Intrenet Gateway
- it Enables our vpc,subnets, instances etc resources to connect to internet
Internet Gateways attach to a VPC and are region resilient
VPC can only have max 1 internet gateway, and an internet gateway can only be attached to max 1 VPC
A subnet is made public once a default route points to the internet gateway in the VPC
03:54

## NAT Gateway
- NAT Gateways allow subnets to talk to the internet, but connections must be initiated from within the VPC
NAT Gateways are deployed onto public Subnets so that they have a public IP and internet access
Uses Elastic IPs
AZ-reliant service; need 1 NAT Gateway in each AZ
Route table for private subnets should point NAT Gatway..

## DNS
- DNS, or the Domain Name System, translates human readable domain names (for example, www.amazon.com) to machine readable IP addresses (for example, 192.0.2.44).
- Device private IPs will automatically be assigned a DNS entry
-AWS DNS server can be accessed on the second IP of the VPC CIDR block as well - 169.254.169.253

## Elastic IP
Public IPs are not static and, if an EC2 instance goes down, then it will get a new public IP
Elastic IPs are static IPv4 addresses that do not change
To use an Elastic IP address, you first allocate one to your account, and then associate it with your instance or a network interface
Elastic IPs are region specific and cannot be moved to a different region

## Security Groups
- firewalls are created to protect our data or to access our data with permitted users.
two type of firewalls
### Stateless firewalls
- here we need configure both inbound and outbound rules for traffic
### statefull firewalls
- it inteligent enough to understand which request and response are part of same connection.
- so if request is permitted then reponse is automatically permitted..

### NACL - network access Control list(NACL)
- filters traffic which are enetering and leaving subnet do not filter traffic within subnet
- these are stateless
### Security groups
- act as firewall for individual firewalls
- these are statefull 

## load balancers
- these are helpful to direct the traffic if one of the instance is down for an application. It will direct the trafffic according to the availability of the instances.
There are three types of load balancers
### classic load balancer
- first load 
-  not recommended to use for new projects
### Application load balancer
- specifically for web apps
- forward req of diff kind 
   --> url path conditions, host domain, Http fields - header,methid, suports HTTP redirects and custom HTTP response..
   - we can perform app specific health checks
   - it is operated at layer 7
### Network load balancer
- it is operated at layer 4(TCP/UDp session)
- faster than application load balancer
- health checks based of ICMP/ TCP connections.

### cross- zone load balancing
-here the traffic will be distributed between all the instances and the load blancers can communicate with the instances in other availabilty zones also..
--> publc load balacers can be deployed as public and private..
  -- public can be deployed in public sibnets and accesssed across public internet..
  -- private load balancers in deployed in private subnets and accessed within the org aws network
#### load balancers in public subnets can forward  requests to resources in private subnets..
   - load balancers can forward requests to other resources like ECS,m Lambda functions.

### load balancers connection steps.
- create two seperate subnets and name and use them for  loadbalancing.
- Associate these subnets with the route tables.
- create an application load balancer with reference to the subnets.
- create an listener with refrence to loadbalancer and targetgroup here listner helps to forward the request from load balancer to target group
- create a target group. Target group is the group of instances or any other services.. so refer to the group accordingly.
- finally load balancer is help full to distribute the traffic between the instances..

## VPN
 - It is used to connet securely from thr organization environment to our VPc private subnets..
 
![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2020.jpg)

- VPN gatway is amazon side end point for your VPN.
- customer gateway is the org's (or our side) device pr software.
- on-premise nework can be set statistically in a route table or dynmically exchnaged via BGP.
- max bandwidth is 1.25 GBPS.

## Direct connect
- physical connection from on-premises with AWS.
- Alternative to use VPN.
- It offers greater thriughput and a more secure, stable connection than VPN over the internet.
![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2021.jpg)

## VPC Peering
- Resources in one vpc cannot talk to resources in another VPC here VPC act as a network boundary..
- Here we are using VPC Peering(nework connection bewteen VPC)
- we can set up peering beween vpc's of same region, diff region or even different aws accounts.

### VPC Peering Connection_steps
- Here we need to create a vpc_peering inside vpc's service.
- still the source and destination vpc are not linked so we need to create a route bewteen them
- create a route in vpc1 route table to step1 vpc_peering  where it has subenets assciated so by usnig this route vpc1 will know about vpc2.
- create  a route in vpc2 route table to the step1 vpc_peering  where it has the subnets this will help vpc2 to get to the vpc1.
-  to check the working  ssh to  vpc1 instance then use ping with vpc2 instance private ip address or vice versa.

## Transit Gateway

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2023.jpg)

Drawback of vpc peering when we have many VPC's
- here we created 
- Here we need to create many peerings for 4 VPC's
- Need to create many VPN while accessing them

----> Transit Gateway

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2022.jpg)

- so here by using only one transit gateway we  can avoid creating many peerings and it can be accessed by using only VPN.




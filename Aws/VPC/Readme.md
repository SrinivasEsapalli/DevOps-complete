# VPC - Virtual private cloud
- we have a deafult VPC for each region.
- default vpc CIDR range - 172.31.0.0/16 - 65536
## Subnet
- Vpc has multilple subnets
- the CIDR range of subnet is between the CIDR range of vpc..
### Router table
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

## Elastic IP's
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
 ## VPN
 - It is used to connet securely from thr organization environment to our VPc private subnets..
 -
![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/shell_script/practise/Screenshorts/Screen%2020.jpg)




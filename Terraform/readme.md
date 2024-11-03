# Terraform
- [ Configuration Management ](#Configuration-Management)
- [ Server templating tools ](#Server-templatingtools)
- [ Provisioning tools ](#Provisioning-tools)
- [ Terraform ](#Terraform)
- [ Commands ](#Commands)
- [ Providers ](#Providers)
- [ Configuration file types ](#configuration-file-types)
- [ Variables ](#Variables)



 ![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2041.jpg)

## Configuration Management
- Ansible, Puppet,SaltSTACK
- These are designed to install and manage software on an exisisting infrastructure such a servers,Databases, Networking devices etc..\
- By using this we can run multiple remote resources at once.

- Ansible playbook or a role can be checked into a Version Control Repository. This allowd us to reuse and distributed it as needed.

Important feature of Configuration Management - These are Idempotent this means we can run the code as many times as needed but It will make only the changes that are necessary to bring the environment into defined state. It will leave everything as it is without having to write any additional code.


## Server templating tools
- These are like Docker, Packer,Vagrant
- These will help to create a custom image of a virtual machine or container . They contain all the exisisting software and dependencies are installed on them. 
EX: Custom Images on AWS AMI and docker images on docker Hub.

- These are immutable infrastructure  - once VM or Container image is deployed then it is remained to be unchanged.

## Provisioning tools
- These are CFT and Terraform
- It is used to provision(the process of creating and setting up IT infrastructure) infrastructure components using a simple declarative code.
- Infrastructure is like servers such as Virtual machines, Databases, VPC's, subnet, Security groups and just about any service based on the provider we choose.
- Cloud formortion template used to deploy services in AWS.
- Terraform - It is vendor Agnostic(designing systems or products that are not dependent on a single vendor, product, or platform) and supports provider plugins for almost all major cloud providers.

## Terraform
- Popular IAC
- Free developed by Hashicorp

Terraform supports like 
- cloud environment infrastructure:  by using providers. Providers helps terraform manage third party platform through their API.
- It also Manages Network infrastructure: like Big-Ip Cloudflare DNS Apollo Alto networks and Infoblox.
- Monitoring and data Management tools like datadog, grafana or xero wavefront and sumo logic.
- Databases: InfluxDB, MongoDB,MYSQL,PostgreSQL
- Version Controling systems: Github bitbucket or gitlab.


![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2042.jpg)


- It uses HCL - Hashicorp Configuration language. It is a declarative language.


Main.tf - All the Infrstructure resources are defined in this file. ex: Ec2,S3, VPC etc..

Declarative: The code what we define is that infrstructure to be in.
### Terraform will automatically does from the current state to the desired state by using folowing phases. 
- Init
- Plan
- Apply

#### Init
- It initializes the project and Identifies the providers to be used for the target environment.
#### Plan
- Terraforn drafts a plan to get to the target phase.
#### Apply
- It will do necessary changes to the target environment to bring it to the desired state.
- For any reason if the environment changes from desired state to another state then terraform apply will bring only the required state by only fixing the missing component.

- Terraform cloud and Terraform Enterprise provides additional features like centralized UI,additional security etc


## Commands

### choco install terraform
- To install the terraforn
### terraform version
- To check the version of terraform.

### terraform init
- It will check the configiration file and initializes the workDIR containing the .tf file and it will download the nesscessary providers(plugin) ex: local
### terraform plan
- It  will show actions carried out by terraform to crate resource.
- Here infrastructure is not created it will display to the users to review like what actions are performed to get to the desired state.

### Terraform apply
- It will show the execution plan once again.
- It will ask for permission then only it will create the resource.

### Terraform Show
- It will show the resources that we just created.
### Terraform Detroy
- It will destroy the available resource.
### Terraform apply -auto-approve
- It will skip asking approval(yes/No) everytime


### Syntax:
<block> <Parameters>{
    key1 = value1             // arguments
    key2 = value2
}

Block - Contains information about the infrastructure platform and set of resources that we want to create.

Terraform example for a resource for storing file in local host:

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2043.jpg)

Terraform Resource for aws Ec2 instance

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2044.jpg)


## Providers
### local
- It will be helpful when we are running the files in the local.
   #### local_file
    - It will display the content of the file in the output screen
    ex: local
   #### locao_sensitive_file 
    - It will not display the contents in the outputfile like it is helpful to hide the sensitive data.
### Random
- It helps to select the random id,integer,password etc..

## Configuration file types
- Main.tf  - Main configuration file containing resource definition.
- variables.tf - contains variable declarations.
- output.tf - contains output from resources.
- provider.tf - contains provider definition

## Variables
- Instead of heardcoding them in the main file we can use them in variables.tf file.

### variable blocks
- we can declare the variables with the varibale type and description.

 ![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2045.jpg)


- list variable
 ![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2046.jpg)

 we can use the list as below for numbers and string
 ![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2047.jpg)

 - Map varible
 ![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2048.jpg)

 same way maps with type string
 ![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2049.jpg)

- sets - These are similar to lists but these don't allow duplicates.
![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2050.jpg)

- Object - It is the combination of all the variable types.
![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2051.jpg)

- Tuples
- It is the just like string but only difference is list accepts similar varible types but tuple accepts different varibale types.
![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2052.jpg)





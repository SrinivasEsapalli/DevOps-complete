# Management and governance services

- [ CFT ](#CFT)
- [ CDK ](#CDK)
- [ CLoud Watch ](#CLoud-Watch)
- [ X-Ray ](#X-Ray)
- [ AWS Health Dashboards ](#AWS-Health-Dashboards)
- [ Prometheus ](#Prometheus)

## CFT
-  It's an iac(infrastructure as code) service by usiing this we can automate the process of tasks like creting services etc..
- we can use yaml or json code
- We need to create a stack inside CFD for each of the yaml file.

## CDK
- cdk - cloud developement kit
- The differences betweeen cft and cdk is here we can use programming laungues like python etc.. so that we can get access to testing environment and third party libraries etc by using these we can create complex scripts for infrastructure.. 
- CDK app uses CFT in the process 

###  CDK synth 
- like after  runnning command it creates CFT
### CDK bootstrap
- If we directly run the cdk deploy command it will return the error 
- CDK bootstrap helps to download the nessary files..

### CDK deploy 
- uses to deploy all the nessary resources into aws..
### - CDK destroy 
- It will destroys the stack..

- In conclusion AWS CDK will creates the CFT stacks then it will create the required services in aws.. 



### CDK commands
- CDK list - it lists the stacks which we deployed..
- CDK synthesize stacks_name - creates the CFT for the template for the stack
- CDK Bootstrap stacks_name - deploys the CDK toolkit stack into an AWS environmet.
- CDK deploy stacks_name -  deploys your stack into aws account
- CDK destroy stacks_name  - destroy the stacks
- CDK diff stacks_name - it will show the exisisting stack and the deployed stack like what's missing etc..
#### cdk init app_name --language language_name
-- This command is used to start with cdk
- app_name - name for this particular app
- lanuge_name - we can use the name pof the lauage which we want to use.

- after running the above command the below files are created 
venv(virtual environment) - it is specific to python it allows us to install all dependencies in python environment..
- source.bat - it is for activating virtual environment
- Requirements.txt - list out the all third party libraries and dependencies..
- readme file - gives instructions how everything upon running like activating virtual env etc..
- cdk.json - config for S=CDK project
- app.py -Main file start of our application
-  cdk folder
-- it has the stacks data

## CLoud Watch 
- All the services like ec2, Lambda etc automatically sends the logs to clud watch..
- developers can integrate their app with cloud watch custom SDK to send their logs..
- users can also push logs using cloud watch api to set logs.. 
- so after this it will seperate the logs based on metrics like cpu utilization, load average..etc..

### cloudwatch components
- Metrics - like cpu utilization etc..
- Alarms - we can set alarams based on metrics.
- logs - where all teh logs are stored like both current and historical..
- events - helps to respond state changes in aws with  custom rules..

- Dashborads - like customizabale home page
 we can display all the logs and metrics which  we ultimately interested in..

 - insights - helps to query logs so that we can drive more complex metrix and insights..

 ### Auto-scaling groups
-  Auto scaling groups uses cloud watch alarms to scale up or scale down the  instances ex: ec2..



## X-Ray
- X- ray is a tracing tool that developers analyze and debug distributed applications( it will like an 100's of services all communicating with another difficult to find source casuse of issue )

- it collects data on request made by our application and prvides details information about the request and response..
- it receives traces from application and AWS Services..
- A trace will have small segments in it..

- It will gives the clear details about a request how long it spent at each portion of your application or services.



![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2033.jpg)



## AWS Health Dashboards
-  it porvides alerts for the events that effects our aws.
two types of events
### public events
-  Any problem with particular instances which effects every AWS accounts...

### Private events
-  A problem with one particular account Ec2 instance  etc...

- we can use other notification services like SNS, SQS, CloudWatch to get the alerts..


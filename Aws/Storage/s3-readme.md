# S3
- [ intro ](#intro)
- [ storage classes ](#storage-classes)
- [ Versioning ](#Versioning)
- [ ACL and Resource Policies ](#ACL-and-Resource-Policies) 
- [ Static Hosting ](#Static-Hosting)
- [ Pre-Signed URL's ](#Pre-Signed-URL's)
- [ Access Point ](#Access-Point)
- [ Backup ](#Backup)


## intro
- simple storage services
- it provides data availabilty, scalability and security.
- it's just like a drop box or google drive which is run by amazon.
- object based storage and there are no directories or file system in s3 flat system which stores object and we cannot boot or mount this to a server..
- It is used to store log files, media files images etc and CI/cd artificats.
- usually we will send request to webesrver and will get reposnse and all the media files will bes stores in server so it's not a good practise when it comes to applications like you tube etc . Hence we are using  a s3 here server will give reponse with the links to s3 where the media files are available..
- buckets are nothing but folders and objects are nothing but files..

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2029.jpg)



- it's flat file structure
- we can create only one directory and all those files inside it.. no directories will be created insided other directory..
- it' replicates file into mutiple servers and multiple availability zones.
-  we cannot create same bucket name by any othere user even with diffent account..it should be unique globally
- it can handle unilimited objects.
- max  individual file filesize 5TB..
- aws account by default support 100 buckets..

## storage classes 
### S3 standard(default)
- if we don't sepecify a class then it will automatically picks this.
- here our object is by default replicated to 3 availability zones.
- files available immidiately in milliseconds after the request..
### S3 Standard-IA(infrequently accessed)
- minor changes same like available in 3 AZ's.
- cheaper then s3 standard.
- files available immidiately in milliseconds after the request.
- diffrences in charge payments.
- minimum charge for 30 days.
- minimum size charge 128kb.
### s2 one Zone-IA
- Object is replicated in same zone but not replicated in multiple available zones.
-  so data is not replicated in many zones so the charges are less. 
- minimum charge for 30 days.
- minimum size charge 128kb.

### S3 Glacier-instant
- low-cost option for rarely data
- same like S3 standard mul AZ.
- minimum charge for 90 days.
- minimum size charge 128kb.
### S3 Glacier-Flexier
- objects are not immediatley avaiable they are sleeping and cheper price.
### S3 Glacier-Deep Archive
- objects are not immediatley avaiable they are sleeping and cheper price.
### s3 inteligent- tiering
-  autimatically reduces costs by inteligently moving data to the most-cost-effective access tier.


![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2030.jpg)

## Versioning
- it helps to maintain previous version of the files. If we enable versioning  this will be useful when we accidently deleted a file or uploaded a file it will miantain previous version of the file. 
- it will enabled on bucket not on files.
3 types of buckets
- unversioned buckets
- versioned buckets
- suspended bukcets - once we eneble we can only suspend it. Even if we suspend a versioning still the old versions are stored in s3 bucket so we need to delte them manually and new files are updated with null version. 
- it will maintain different id's for each version of file..
- price will be charged for every version.
- we can enble MFA to update or delete in versions. It can be availeble using CLI.

## ACL and Resource Policies

- by defaullt only root user and onwener have access..
- to make the access changes policys are useful

### Bucket- policy
- written in JSON.

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2031.jpg)

- Principal - who the policy should apply to and * means applied to everyone on internet.
- Resource - tells what aws resources this policy applied to
- Action  - tells what the principal allowed to perform on the resources
- Effect - allows or denies an action



##### note: Iam policys are attached to users  to make them access specific services etc.. and Resource policys are applied to resource like s3 so that who can modify it and resources policys are applied to annonymous and public users..  

### ACLS:
- access control mechanisms

![screenshot](https://github.com/SrinivasEsapalli/DevOps-complete/blob/main/linux/Screenshorts/Screen%2032.jpg)


## Static Hosting
- we can host static websites in s3 bucket but we cannot host dynamic websites like which uses servers or sever-side logic etc..
- additional fee per http rrequest.
 - if a custom domain is used then bucket name needs to match with the domain name.

## Pre-Signed URL's

- These are the Url's created by authenticated to access any  private file by any public user. By using this URL s3 bucket treats the public user as the authorized user since it's an authorized user's URL..

notes: When creating pre-signed URLs, an expiration date must be provided
* Expiration duration of maximum 7 days using an IAM user is provided
* If an IAM user does not have access to an 53 bucket, a pre-signed URL can still be generated using that account
* The pre-signed URL does not give you access to a bucket; however, it allows you to send a request to S3 as the user that generated the URL

## Access Point
- it helps to  manage acces to your bucket
- every group or user can be given by their own  access point which act as their own view or tunnel into s3 bucket..
- it has own ARN so it won't reach to bucket URl instead of that it uses it's own URL.
- intstead of buckets we can apply policy to access points.


## Backup
- creates copies of data to restore it in case of data loss
- An Essential part of disaster recovery
ex: Backup Vault, Backup Plan, Recovery Point..
- backup valut also will create the  replica of vault in diffrent availability zones..
#### Aws Backup - Monitoring inytegrations
- list of aws services
- AWs organizations, Amazon EventBridge, AWS CLoud Watch, Aws Cloud Trail, AMazon SNS
### Disaster Recovery
- it's a broader strategy including backup includes planning for system and application recovery..
ex: s3, EBS Snapshots 

### Elastic Disaster Recovers(DRS)
- it is fully managed disaster recovery service
- aws will manage everything and we can use aws infrastucture as recovery site no need buy servers etc..
- keeps things in continuoes replication state keep updates data regularly..
- 







 




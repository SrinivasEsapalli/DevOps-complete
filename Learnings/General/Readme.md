# General
- [ Application support team ](#Application-support-team)
- [ POC ](#POC)
- [ DR Planning ](#DR-Planning)
- [ ISilon ](#Isilon)
- [ state architecture ](#state-architecture)
## Application support team
- Roles and Responisbilitys of Application support team.

### Incident:
#### When application is down incident is created.
 if any application is down application support team needs to inform to users that application is down and we neeed to work with respctive for example server team. once the server team resolve this issue then we need to inform back the users that application is back.

#### Also we need to to Root cause analysis-
    - we need check with server team what was the isseu.
    - why those are down.
    - What are the steps needs to be taken to overcome in the future.

#### we need to do above 3 steps for every issue.



## POC
 POC - Proof of concepts.
 - Gathering of the all the information. They will develop initial stage of an environment anf they will take care of things. This is like a dummy environment. we need to install the software. They estimate how much it will take to install the software. They will create this enivironment.
 - According to the work They decide the cost and time, resources,effort etc. They will find out everything while doing the POC.
- After POC they know everything like softwares, servers in and out of the project.


- Then they will build the environments UAT, TEST and PROD.


## Dr planning 
- Disaster Recovery planning
- This is an activity done every year once or twice according to the criticality of the application.
- If our data center is in Locataion A. If anything happens in Location A like earth quake. Again we need to recollect the data. That is our system has to go smoothly. No need of lossing of work. So that's why they planned to put other data center in other location.
- So one data center is in one location A and other one will be in different location B. 
- So yearly once they will make the other data center is upto date and they will use the data center   and they will work on it. so one day they will make that data center up and they will test few scenarios, applications and all. Then they will move back to original data center.
- Planning we have to do how the DR activity will goes.


## ISIlon

- IsIlon is a scale-out NAS (Network Attached Storage) platform designed for high-volume storage, ideal for unstructured data like files, videos, backups, etc. It provides:

- High scalability – Add nodes without disruption.

- OneFS Operating System – Unifies all nodes into a single intelligent file system.

- High availability and performance – Suited for large enterprise workloads like media & entertainment, healthcare, and analytics.

- Protocols supported – NFS, SMB, HDFS, HTTP, FTP.


## state architecture

In the context of state government, an agency is typically a large organizational body that handles a specific area of public administration (e.g., health, transportation, finance). Within a state agency, you'll often find bureaus, divisions, and sometimes offices or departments—each with specific roles.

Here’s a breakdown of what each usually represents:

🏛️ 1. Agency
Definition: A top-level governmental body responsible for implementing and managing laws and policies in a specific area.
Example:

Department of Health

Department of Transportation

Department of Revenue

🧭 2. Division
Definition: A subsection of an agency that handles a major functional area. Divisions often correspond to major programs or areas of oversight.
Example:

Division of Public Health (within the Department of Health)

Division of Motor Vehicles (within the Department of Transportation)

🗂️ 3. Bureau
Definition: A more specialized unit within a division. Bureaus typically manage operational or technical aspects of the division’s work.
Example:

Bureau of Vital Records (within the Division of Public Health)

Bureau of Driver Licensing (within the Division of Motor Vehicles)

🏢 4. Office / Section / Unit
Definition: These are often smaller or more focused groups within a bureau or division, responsible for specific tasks or programs.
Example:

Office of Epidemiology

IT Security Unit

🧩 How They Relate (Hierarchy):
css
Copy
Edit
State Agency
└── Division
    └── Bureau
        └── Office / Section / Unit
🔎 Example (Department of Health):
Agency: State Department of Health

Division: Division of Disease Control

Bureau: Bureau of Immunization

Office: Office of Vaccine Management
 



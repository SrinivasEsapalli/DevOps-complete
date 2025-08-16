

SQL server Management Studio:
----------------------------
-> we have to communicate with servers by using GUI - Graphical user Interface.
-> we can save scripts etc. These are helpful for connecting the server centers in distinct remote positions.


We can connect to the following by using SSMS:
-----------------------------------------------

## Datbase Engine - It's where our datbase live and queries like - SELECT, INSERT etc

ex: Saving customer orders, running a report to find top customers, updating product prices. 


## Analysis services
- It’s for building analytical models — like cubes for OLAP (Online Analytical Processing) or tabular models — that make data analysis super fast and organized.

ex:
Building a data model so users can easily run complex reports on millions of rows without the system slowing down.

## Integration services

- It’s for moving and transforming data — think ETL (Extract, Transform, Load) pipelines.

ex: Pulling data from an Excel sheet, cleaning it, and loading it into a SQL Server table automatically.

## Reporting services

It’s for creating, managing, and delivering reports (like charts, tables, dashboards).

ex: Automatically sending monthly sales reports to executives via email.


## Azure Storage

Azure Storage itself is a cloud storage service — where you can store files, blobs, tables, etc. In SSMS, you might interact with Azure blobs when backing up databases or managing external data.

Ex:
Saving database backups to an Azure Blob Storage account instead of a local disk.

## Azure SSIS 

A managed service in Azure that lets you run your existing SSIS packages (those ETL jobs) in the cloud — without needing to run them on a local server.


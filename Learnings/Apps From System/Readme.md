#  APPS
- [ Computer Management ](#Computer-Management)
- [ Event Viewer ](#Event-Viewer)
- [ MMC ](#MMC)



## Computer Management 

- Computer Management is a built-in Windows administrative tool that provides access to various system utilities for managing a computer. It includes:

🔹 Event Viewer – View system logs and troubleshoot errors.
🔹 Task Scheduler – Automate tasks and scripts.
🔹 Device Manager – Manage hardware and drivers.
🔹 Disk Management – Partition and format drives.
🔹 Services – Start, stop, and configure system services.
🔹 Shared Folders – Manage network shares and sessions.
🔹 Local Users and Groups – Manage user accounts (not available in Home editions).
🔹 Performance Monitor – Monitor system performance.



###  Local Users and Groups 
- To verify whether we have admin permissions or not 
- Goto Groups --> then open Administrators  --> Then check for your user name.


## Event Viewer 
The Event Viewer is a built-in Windows tool that logs system, security, and application events. It helps IT professionals and system administrators troubleshoot issues, monitor system health, and analyze security-related activities.

### Event viewer and Windows event viewer difference
Event Viewer in Computer Management
Found under System Tools inside Computer Management (compmgmt.msc).

Provides a simplified view of system logs.

Less customization and fewer filtering options.

Useful for quick troubleshooting while managing other system components.

2️⃣ Standalone Event Viewer (eventvwr.msc)
Accessed separately via Run (Win + R) → eventvwr.msc.

More detailed and customizable, allowing you to create custom views and advanced filters.

Provides deeper insights into system logs (Application, Security, System, Setup, etc.).

Supports subscriptions for forwarding logs from multiple systems.

📌 When to Use Which?

If you're already inside Computer Management, the built-in Event Viewer is convenient.

If you need advanced log analysis, filtering, or custom event subscriptions, use the full Event Viewer.



## MMC

.MSC stands for Microsoft Management Console (MMC) Snap-in. It is a file extension used for administrative tools in Windows that run within the Microsoft Management Console (MMC) framework.

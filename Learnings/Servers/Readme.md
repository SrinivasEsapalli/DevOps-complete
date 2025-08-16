
# webserver:

- A web server is a software or hardware that stores, processes, and delivers websites to users over the internet. It handles requests from web browsers (like Chrome, Firefox) and sends back web pages.
- - It won't don't disturb the app server. Serves as the static page and security request from the browser.
ex: www.fb.com
 - if we click on this link the request will goes to webserver. 
  ex: IIS(Internet information services) microsoft, Apache(open source webserver), NGINIX,KOFKA are webservers.
  - It will get request from browser and we will be having security certificate. browser to webserver handshake will be made. 
    If it is successful webserver then we will have to write rules.

    static page: login and pasword . It will verify and gives the first page of FB. Home page of FB. In this scenario the webserver will serve user and it won't disturb the appserver.



    after entering details request will goes to app server


# App servers:
- We have the original application and all the code will be there in app server.
www.fb.com

ex: WebSphere, Weblogic and appache Tomcat,Jboss.

-  After entering details request will goes to app server. Appserver returns the code. It will check for those details by fetching from DB. 
If password from DB matches. It will dispay next page. This page will be in Webserver.
- App server can make work like webserver but webserver cannot work like app server.


## Diff between app server and webserver.
    




## every server will ahve the default port we should go only abobe the default one for example.
fot HTTPS dafault port is 443 so if we want to use any other ports.
- we can use 444,445 etc noot below number than dafult port.

- don't use 440,441 etc.
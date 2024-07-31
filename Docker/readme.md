# Docker
- It will maintain seperate containers for each component library's and dependency's support all operating systems.
- It will run them sepearately with their depencies..
- Need to start teh docker deamon to start working on docker..

- [ basic commands ](#basic-commands)
- [ attach detach ](#attach-detach)

## list commands

### docekr pull image_name
- It will pull the image to the local repository
### docker run image_name
- It will run the image
### docker ps
- It will list all the containers
### docker ps -a
- It will show all running anf stopped containers
###  docker stop 
- To stop the containers
- we can delete the container after stopping them..
### docker rm container-id
- To container permanently
### docker imaages
- To check available images
### docker rmi image_name
- It will Delete the image

## attach detach
### attach mode ex: docker run image_name
- To start a terminal in attach to it's terminal. It will show the session details in terminal..
### detach mode ex: docker run -d image_name
it will helps to run the container in the background without being attached to your terminal session..


#### check javahello docker file for a sample image


 

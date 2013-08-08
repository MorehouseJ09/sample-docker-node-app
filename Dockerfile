# DOCKER-VERSION 0.3.4

# set up our actual docker image 
FROM centos:12.04

RUN echo "HELLO WORLD" > ~/test.md
## Enable node and its installation
#RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

## now actually install node
#RUN yum install -y npm-1.2.17-5.el6

## now add our source code inside of the docker image
#ADD . /src

## install any and all dependencies needed
#RUN cd /src; npm install

## now link the public facing port to the local docker daemon
#EXPOSE 8080

## set up the run command for this application
#CMD ["npm", "start"]


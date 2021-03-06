sample-docker-node-app
======================

This is a proof of concept / sample app testing out deployment of Node.js applications via Docker.

[Docker](https://github.com/dotcloud/docker)
[Node Installation Tips](http://schier.co/post/install-nodejs-on-ubuntu-server-with-ppa)


Conventions
=

- Vagrant Box [Download](http://vagrant.jumperapi.com/node.box)
- Host Ports 44** -> Vagrant instances
- Docker Containers take care of all node deployment. Dockerfiles are responsible for downloading repos etc (Vagrant is just for testing the various dockerfiles etc)

Tasks
=

- Test out port forwarding from dockerfile to node application
- Build out basic ec2 init script using [EC2-Init StackOverFlow](http://stackoverflow.com/questions/10125311/how-to-fire-ec2-instances-and-upload-run-a-startup-script-on-each-of-them)
- Update vagrant urls etc

Deployment Notes
=

- Dockerfiles - these are hosted on a locked down server
- Everything builds off of privatized github repos. We pull repos down to run our various apps
- Each time we update, we just rebuild all of our containers and restart them
- Docker will copy over an ssh key to the container and then remove it once we are finished (to grab protected repos)


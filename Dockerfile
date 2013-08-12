# DOCKER-VERSION 0.3.4

# set up our actual docker image 
#FROM ubuntu:12.04
#docker pull shykes/nodejs
FROM shykes/nodejs

# update applications and repos etc
# RUN apt-get update 
# RUN apt-get upgrade -y

## now actually install our node directory into the correct element
ADD . /app

# we now have node installed on our server -- we can do whatever we want
RUN cd app && npm install

# now install our modules!
RUN npm install

## now link the public facing port to the local docker daemon
EXPOSE 80

## set up the run command for this application
ENTRYPOINT ["/usr/local/bin/npm"]
#CMD ["npm", "start", "app"]
#CMD ["/usr/local/bin/npm", "start"]
CMD ["--help"]

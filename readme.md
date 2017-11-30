## Docker ##

### Installing docker ###

Just check the instructions below in other install Docker and Docker Compose:

Docker: https://docs.docker.com/engine/installation/linux/docker-ce
Docker Compose: https://docs.docker.com/compose/install/#install-compose

You can also try to install Docker and Docker Compose executing the following scripts:
````
docker/install-docker.sh
docker/install-docker-compose.sh
````

### Installing Containers ###
````
docker pull nginx
docker pull redis
docker pull mongo
docker pull ayro/ayro
docker pull ayro/ayro-webcm
docker pull ayro/ayro-website
````

### Running Containers ###

First you need to create the Ayro network on Docker:
````
docker/create-network.sh
````
And then you can run the containers:
````
// Please read "Nginx Container" session before
docker/start-container.sh nginx
// Please read "Redis Container" session before
docker/start-container.sh redis
// Please read "Mongo Container" session before
docker/start-container.sh mongo
// Running ayro containers
docker/start-container.sh ayro/ayro
docker/start-container.sh ayro/ayro-webcm
docker/start-container.sh ayro/ayro-website
````

## Nginx Container ##

### Certificates ###

#### Installing Let's Encrypt ####
````
certificate/install-letsencrypt.sh
````

#### Installing certificates ####
````
certificate/install-certs.sh
````

#### Renewing certificates (cron task) ####
````
certificate/install-certs-tasks.sh
````

## Redis Container ##

### Client ###

````
docker run --rm -it --net=host redis redis-cli
````

## Mongo Container ##

### Shell ###

````
docker run --rm -it --net=host mongo mongo shell
````

### Security ###

#### Creating administrator and user ####

Don't forget to replace the password token by the user password.
````
use admin
db.createUser({
  user: "admin",
  pwd: "<password>",
  roles: [{
      role: "userAdminAnyDatabase",
      db: "admin"
  }]
})
db.createUser({
  user: "ayro",
  pwd: "<password>",
  roles: [{
      role : "readWrite",
      db : "ayro"
  }]
})
````
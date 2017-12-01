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
docker pull mongo
docker pull redis
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
// Please read "Registry Container" session before
docker/start-container.sh registry

// Please read "Mongo Container" session before
docker/start-container.sh mongo

// Please read "Redis Container" session before
docker/start-container.sh redis

// Running ayro container
docker/start-container.sh ayro/ayro

// Running ayro-webcm container
docker/start-container.sh ayro/ayro-webcm

// Running ayro-website container
docker/start-container.sh ayro/ayro-website

// Please read "Nginx Container" session before
docker/start-container.sh nginx
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

## Redis Container ##

### Client ###

````
docker run --rm -it --net=host redis redis-cli
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
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

### Running Containers ###

First you need to create the Ayro network on Docker:
````
docker/create-network.sh
````
And then you can run the containers:
````
// Please read "Nginx Container" session before
docker/start-container.sh nginx

// Please read "Mongo Container" session before
docker/start-container.sh mongo

// Please read "Redis Container" session before
docker/start-container.sh redis
````

## Nginx Container ##

### Certificates ###

#### Installing Let's Encrypt ####
````
certs/install-letsencrypt.sh
````

#### Installing certificates ####
````
certs/install-certs.sh
````

#### Renewing certificates (cron task) ####
````
certs/install-certs-tasks.sh
````

## Mongo Container ##

### Shell ###

````
docker run --rm -it --net=ayro-network mongo mongo --host mongo
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
docker run --rm -it --net=ayro-network redis redis-cli -h redis
````
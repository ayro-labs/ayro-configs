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
sudo docker pull nginx
sudo docker pull redis
sudo docker pull mongo
sudo docker pull ayro/ayro
sudo docker pull ayro/ayro-webcm
sudo docker pull ayro/ayro-website
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
sudo docker run --rm -it --net=host redis redis-cli -p 6379
````

## Mongo Container ##

### Shell ###

````
sudo docker run --rm -it --net=host mongo mongo shell
````

### Security ###

#### Creating administrator and user ####
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
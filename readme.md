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
cd nginx; sudo docker-compose up -d
// Please read "Redis Container" session before
cd redis; sudo docker-compose up -d
// Please read "Mongo Container" session before
cd mongo; sudo docker-compose up -d
// Running ayro containers
cd ayro/ayro; sudo docker-compose up -d
cd ayro/ayro-webcm; sudo docker-compose up -d
cd ayro/ayro-website; sudo docker-compose up -d
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
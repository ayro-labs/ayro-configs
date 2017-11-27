## Docker Basics ##

### Installation ###

Docker

https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/

Docker Compose

https://docs.docker.com/compose/install/#install-compose

Installing Containers
````
sudo docker pull nginx
sudo docker pull redis
sudo docker pull mongo
````
Running Containers
````
cd nginx; sudo docker-compose up -d
cd redis; sudo docker-compose up -d
cd mongo; sudo docker-compose up -d
````

### Utilities ###

Redis client
````
sudo docker run --rm -it --net=host redis redis-cli -p 6379
````

Mongo shell
````
sudo docker run --rm -it --net=host mongo mongo shell
````

## Mongo Tips ##

### Security ###

Create admin and users
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
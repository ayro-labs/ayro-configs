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
cd ayro-configs/nginx; sudo docker-compose up -d;
cd ayro-configs/redis; sudo docker-compose up -d;
cd ayro-configs/mongo; sudo docker-compose up -d;
````

## Nginx Container ##

### Certificates ###

Installing certificates
````
ayro-configs/nginx/install-certs.sh
````

Renewing certificates (cron task)
````
ayro-configs/nginx/install-renew-task.sh
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
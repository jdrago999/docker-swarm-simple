
# Docker Swarm Three-Tier

This is a simple docker swarm setup.

```bash
# First init your docker swarm cluster:
docker swarm init

# Deploy a new stack as described in the yml file:
docker stack deploy -c swarm-config.yml hello

# Keep an eye on your containers as they are created:
docker container ps

# Watch the logs for the backend service:
docker service logs hello_backend

# Watch the logs for the mysql service:
docker service logs hello_mysql

# Get a shell into the backend service:
bin/service-exec hello_backend bash
```

If you install this on an EC2 instance:

First, install Docker:

https://www.cyberciti.biz/faq/how-to-install-docker-on-amazon-linux-2/

Then install this repo:

```bash
sudo yum install git
ssh-keygen
git clone https://github.com/jdrago999/docker-swarm-simple.git
ls
cd docker-swarm-simple/
```

Then just follow the instructions.

```bash
cat README.md
docker stack deploy -c swarm-config.yml hello
docker container ps
docker service logs hello_mysql
docker container ps
docker service logs hello_backend
curl localhost
curl localhost/api
```

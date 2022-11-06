
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

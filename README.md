
# Docker Swarm Three-Tier

This is a simple docker swarm setup.

```bash
docker swarm init
docker stack deploy -c swarm-config.yml hello
docker container ps
bin/service-exec hello_backend bash
```

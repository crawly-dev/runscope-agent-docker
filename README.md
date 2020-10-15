# Runscope Agent Docker

## Docker compose

`docker-compose up -d`

## Kubernetes

`kubectl applay -f namespace.yaml -f config-map.yaml -f deployment.yaml`

## Config
Change settings in docker-compose.yml for Docker Compose or config-map.yaml for Kubernetes

**agent-id** and **team-id**: unique self-generated (https://www.uuidgenerator.net/) identifier for internal identification in ruscope only
**name**: label for dashboard identification

Optional:
**debug**: add a line with this parameter to the file to enable debug mode

## Docs
https://www.runscope.com/docs/api-testing/agent/
# Self-Hosted PlantUML Application With `plantuml-editor2`

## Feature

* One step installation
* Docker supported: arm64 & amd64

## Usage

write a `docker-compose.yml` file:

```yaml
version: '3'
services:
  plantuml-server:
    image: plantuml/plantuml-server:jetty
    ports:
      - "8301:8080"
    restart: unless-stopped
  plantuml-editor:
    image: dfface/plantuml-editor2:main
    ports:
      - "8300:8088"
    restart: unless-stopped
    depends_on:
      - plantuml-server
```

then run: `docker-compose up -d`

after services are ready, visit: http://localhost:8300





see: https://hub.docker.com/r/dfface/plantuml-editor2

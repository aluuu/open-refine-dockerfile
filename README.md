# Docker image OpenRefine-2.6-rc.2

Based on [openjdk:7-jre-alpine](https://github.com/docker-library/openjdk/blob/54c64cf47d2b705418feb68b811419a223c5a040/7-jre/alpine/Dockerfile).

## Quickstart

```
docker pull aluuu/open-refine
docker volume create --name refine-data
docker run -d -p 3333:3333 -v refine-data:/var/lib/refine aluuu/open-refine:latest
open http://127.0.0.1:3333
```

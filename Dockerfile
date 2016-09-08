FROM openjdk:7-jre-alpine

WORKDIR /
EXPOSE 3333
VOLUME ["/var/lib/refine"]

RUN apk add --update wget gzip bash
RUN wget --no-check-certificate https://github.com/OpenRefine/OpenRefine/releases/download/2.6-rc.2/openrefine-linux-2.6-rc.2.tar.gz
RUN tar -xzf openrefine-linux-2.6-rc.2.tar.gz
RUN rm openrefine-linux-2.6-rc.2.tar.gz

ENTRYPOINT /openrefine-2.6-rc.2/refine -i 0.0.0.0 -d /var/lib/refine
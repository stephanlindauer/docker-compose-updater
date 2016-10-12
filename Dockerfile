FROM docker/compose:1.9.0

RUN apk update && apk add bash && rm -rf /var/cache/apk/*

WORKDIR /docker-compose-updater/
COPY run.sh /docker-compose-updater/run.sh

ENTRYPOINT ["./run.sh"]

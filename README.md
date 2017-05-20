# docker-compose-updater

## What is it good for?

This starts and docker-compose configuration and keeps the Containers updated with
the referenced Image tag in your Docker Repository.
It might be useful if you use an approach where where you push new versions of an
image onto the same Docker tag like `:latest` or `staging-latest`.

The script pulls your new image before stopping the old one which helps to keep
the downtime as low as possible.

## How to use
```
docker run \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $(pwd)/docker-compose/:/docker-compose-updater/docker-compose.yml \
  -e CHECK_INTERVAL_SEC=60 \
  stephanlindauer/docker-compose-updater
```
Note:
* You need to map in the Docker socket
> ```-v /var/run/docker.sock:/var/run/docker.sock```
* Map in the `docker-compose.yml` you want to run
> ```-v $(pwd)/docker-compose.yml:/docker-compose-updater/docker-compose.yml```
* Set `CHECK_INTERVAL_SEC` or let it default to 60 seconds
> ```-e CHECK_INTERVAL_SEC=1337```

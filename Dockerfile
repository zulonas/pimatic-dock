FROM node:8

## Requirements
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && apt-get install -y \
	build-essential \
	git

## Pimatic setup
WORKDIR /etc/opt/
RUN npm install https://github.com/michbeck100/pimatic.git --prefix pimatic-app
COPY ./pimatic/config_default.json /etc/opt/pimatic-app/config.json

## Add Pimatic to startup sistem
WORKDIR /etc/init.d/
COPY ./pimatic/pimatic-init-d /etc/init.d/pimatic
RUN chmod +x pimatic
RUN update-rc.d pimatic defaults

ENTRYPOINT service pimatic start && touch /etc/opt/pimatic-app/pimatic-daemon.log && tail -f /etc/opt/pimatic-app/pimatic-daemon.log

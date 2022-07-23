# Docker env for Pimatic

Docker environment for [Pimatic](https://github.com/pimatic/pimatic).
This should work on Linux and possibly MacOS. However, Windows 10 Docker does not have
the ability to mount USB devices.

## Setup
Open `docker-compose.yml` and remap USB devices if necessary.
```
cp ./pimatic/config_default.json ./config.json # or use your existing config
docker-compose up -d
```
`config.json` will be used as configuration file

## Tested on
- [x] Ubuntu 20.04
- [x] Raspberry pi 3b+

## References
- https://github.com/pimatic/pimatic
- [RPI docker quick start](https://gist.github.com/zulonas/62681a3eb82bf4bf78f6764544f481d5)

# Docker env for Pimatic

Simple docker environment for [Pimatic](https://github.com/pimatic/pimatic).
This should work on Linux and maybe on MacOS. However, Windows docker don't have
capabilities to mount USB devices.

## Setup
Open `docker-compose.yml` and remap USB devices if necessary.
```
cp ./pimatic/config_default.json ./config.json # or use your existing config
docker-compose up -d
```
`config.json` will be used as persistent configuration file

## References
- https://github.com/pimatic/pimatic

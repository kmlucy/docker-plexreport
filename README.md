# docker-plexreport

To run:
```
docker run -v /path/to/config:/etc/plexReport kmlucy/docker-plexreport
```
The first time you run this, it will copy an example config to your config folder. Rename that file to config.yaml and set it up. Future runs will use that config.

Uses bstascavage/plexReport

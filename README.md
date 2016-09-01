# docker-plexreport

To run:
```
docker run \
  -v /path/to/config:/etc/plexReport \
  -e "OPTIONS=***" \
  kmlucy/docker-plexreport
```
The first time you run this, it will copy an example config to your config folder. Rename that file to config.yaml and set it up. Future runs will use that config.

If you do not set options, they default to `-n -d`.

Uses bstascavage/plexReport

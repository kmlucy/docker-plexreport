#!/bin/bash

# install dependencies
apt-get update -q
apt-get install -qy ruby ruby-dev git make gcc inotify-tools

# install plexReport
git clone https://github.com/bstascavage/plexReport.git /opt/plexReport
cd /opt/plexReport/
./initial_setup.sh

# copy config
mkdir /opt/config
cp -r /etc/plexReport/* /opt/config/
rm /opt/config/config.yaml

# clean up
apt-get purge -y git make gcc inotify-tools
apt-get autoremove -y
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/

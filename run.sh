#!/bin/bash

for f in /opt/config/*; do
	fname="$(echo $f | sed 's|/opt/config/||')"
	if ! [ -e /etc/plexReport/$fname ]; then
		cp $f /etc/plexReport/
	fi
done

if [ -e /etc/plexReport/config.yaml ]; then
	plexreport $OPTIONS
else
	echo "No config.yaml exists. Create a config.yaml and run the container again. Use config.yaml.example as a template."
	exit 1
fi

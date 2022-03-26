#!/bin/sh

/usr/bin/obs/python3 flask-app.py & /usr/bin/obs/node_exporter-1.3.1.linux-amd64/node_exporter &

#!/bin/sh

python3 /usr/bin/obs/flask-app.py & /usr/bin/obs/node_exporter-1.3.1.linux-amd64/node_exporter &

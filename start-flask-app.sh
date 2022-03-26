#!/bin/sh

python3 flask-app.py & ./node_exporter-1.3.1.linux-amd64/node_exporter &

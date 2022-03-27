#!/bin/sh

mkdir obs
sleep 1s
cd obs
sleep 1s
pip3 install flask
sleep 5s
pip3 install prometheus-flask-exporter
sleep 5s
wget https://raw.githubusercontent.com/RajaRK2018/observabilitychallenge/main/flask-app-1.py
sleep 3s
chmod 777 flask-app-1.py
sleep 1s
wget https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz
sleep 3s
tar -xvf node_exporter-1.3.1.linux-amd64.tar.gz
sleep 1s
wget https://raw.githubusercontent.com/RajaRK2018/observabilitychallenge/main/start-flask-app.sh
sleep 3s
chmod +x start-flask-app.sh
sleep 1s
wget https://raw.githubusercontent.com/RajaRK2018/observabilitychallenge/main/start-flask-app.service
sleep 3s
sudo cp start-flask-app.service /lib/systemd/system/
sleep 2s
sudo systemctl daemon-reload
sleep 2s
sudo systemctl enable start-flask-app.service
sleep 2s
sudo systemctl start start-flask-app.service
sleep 2s
sudo systemctl status start-flask-app.service -l

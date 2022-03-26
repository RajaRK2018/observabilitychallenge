#!/bin/sh

mkdir prom
sleep 1s
cd prom
sleep 1s
wget https://github.com/prometheus/prometheus/releases/download/v2.33.3/prometheus-2.33.3.linux-amd64.tar.gz
sleep 3s
tar -xvf prometheus-2.33.3.linux-amd64.tar.gz
sleep 1s
wget https://raw.githubusercontent.com/RajaRK2018/observabilitychallenge/main/start-prom-app.sh
sleep 3s
chmod +x start-prom-app.sh
sleep 1s
wget https://raw.githubusercontent.com/RajaRK2018/observabilitychallenge/main/start-prom-app.service
sleep 3s
sudo cp start-prom-app.service /lib/systemd/system/
sleep 2s
systemctl daemon-reload
sleep 2s
systemctl enable start-prom-app.service
sleep 2s
systemctl start start-prom-app.service
sleep 2s
systemctl status start-prom-app.service -l

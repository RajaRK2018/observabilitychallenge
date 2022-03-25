cd /etc/yum.repos.d
sleep 2s
wget https://raw.githubusercontent.com/RajaRK2018/observabilitychallenge/main/grafana.repo
sleep 5s
sudo yum install grafana
sleep 5s
y
sleep 2s
y
sleep 2s
y
sleep 2s
sudo systemctl daemon-reload
sleep 2s
sudo systemctl start grafana-server
sleep 2s
sudo systemctl status grafana-server
sleep 2s
sudo systemctl enable grafana-server.service

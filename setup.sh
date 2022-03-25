pip3 install flask
sleep 3s
pip3 install prometheus-flask-exporter
sleep 3s
wget https://raw.githubusercontent.com/RajaRK2018/observabilitychallenge/main/flask-app.py
sleep 3s
python3 flask-app.py &
sleep 3s
wget https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz
sleep 3s
tar -xvf node_exporter-1.3.1.linux-amd64.tar.gz
sleep 3s
cd node_exporter-1.3.1.linux-amd64
sleep 3s
./node_exporter &

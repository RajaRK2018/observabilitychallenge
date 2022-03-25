from flask import Flask,redirect
from prometheus_flask_exporter import PrometheusMetrics
app = Flask(__name__)
metrics = PrometheusMetrics(app)
@app.route('/')
def main():
 return 'Welcome to Flask App'
@app.route('/redirect')
def handle_redirect():
 return redirect("/", code=302)
@app.route('/bad_request')
def bad_request():
 return 'bad request!', 400
@app.errorhandler(404)
def pageNotFound(error):
 return 'page not found!', 404
@app.route('/exception')
def exception():
 return exception("Causing Exception")
app.run(host='0.0.0.0')

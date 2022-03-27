#!/usr/bin/env python3

from flask import Flask,redirect
from prometheus_flask_exporter import PrometheusMetrics
app = Flask(__name__)
metrics = PrometheusMetrics(app)

from random import randint
from time import sleep

@app.route('/')
def main(): 
 sleep(0.5)
 return 'Welcome to Flask App'
@app.route('/redirect')
def handle_redirect(): 
 sleep(0.75)
 return redirect("/", code=302)
@app.route('/bad_request')
def bad_request(): 
 sleep(1)
 return 'bad request!', 400
@app.errorhandler(404)
def pageNotFound(error): 
 sleep(2)
 return 'page not found!', 404
@app.route('/exception')
def exception(): 
 sleep(3)
 return exception("Causing Exception")
app.run(host='0.0.0.0')

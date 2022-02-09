from flask import Flask
app = Flask(__name__)

# simple python App for AzCtrl demos https://github.com/infchg/AzCtrl 

@app.route("/")
def hello():
    return "Hello, World! simple App for AzCtrl demos https://github.com/infchg/AzCtrl  "
  
  

from flask import Flask, request

#Flask constructor and name is using current module
app = Flask(__name__)

@app.post('/deepapalabhavi/myfirstapi')
def concat_fname_lname():
    fname = request.form['name']
    return fname+" palabhavi"
    
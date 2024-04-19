from flask import Flask

app = Flask(__name__)

items = ['item1', 'item2', 'item3']

@app.route('/home')
def hello_world():
    return 'Hello, World!'


@app.route('/inventory')
def inventory():
    return ' '.join(items)

if __name__ == '__main__':
    app.run(debug=True, host='127.0.0.3', port=8080)

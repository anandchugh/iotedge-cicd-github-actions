from flask import Flask, jsonify

app = Flask(__name__)


@app.route("/")
def user_details():
    return jsonify({"name": "testuser"})


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

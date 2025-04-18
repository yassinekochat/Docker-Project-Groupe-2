import time
import mysql.connector
from flask import Flask, jsonify

app = Flask(__name__)

# Retry logic for MySQL connection
def get_db_connection():
    retries = 5
    while retries > 0:
        try:
            db = mysql.connector.connect(
                host="mysql_container",  # Ensure this matches the MySQL container name
                user="root", 
                password="0000", 
                database="test_db"
            )
            return db
        except mysql.connector.errors.InterfaceError as e:
            print("Error connecting to MySQL, retrying...")
            time.sleep(5)  # Wait for 5 seconds before retrying
            retries -= 1
    raise Exception("Failed to connect to MySQL after several attempts.")

# Initialize the database connection
db = get_db_connection()

@app.route('/health')
def health():
    return jsonify({"status": "healthy"})

@app.route('/data')
def data():
    cursor = db.cursor()
    cursor.execute("SELECT * FROM users")
    result = cursor.fetchall()
    cursor.close()
    return jsonify(result)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=4743)

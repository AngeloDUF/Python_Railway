# "Hello World" Project in Python with Flask

This project is a simple "Hello World" application in Python using Flask, running in a Docker container.

## Required Files

1. `app.py` - Main application file.
2. `Dockerfile` - Docker configuration file.

---

### Step 1: Create the `app.py` File

Create a file named `app.py` with the following content:

```python
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello from Python"

if __name__ == '__main__':
    app.run(host='0.0.0.0')
```

This file defines a basic Flask application that displays the message "Hello from Python" at the root path (`/`).

---

### Step 2: Create the `Dockerfile`

In the same directory, create a file named `Dockerfile` with the following content:

```Dockerfile
# Use a lightweight Python image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the code file into the container
COPY app.py .

# Install Flask
RUN pip install flask

# Expose port 5000
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
```

This `Dockerfile`:
- Uses a lightweight Python image.
- Copies `app.py` into the container.
- Installs Flask.
- Exposes port 5000 where the application will listen.
- Runs the application with `python app.py`.

---

### Step 3: Build the Docker Image

In the terminal, navigate to the directory where you saved `app.py` and `Dockerfile`, and run the following command to build the image:

```bash
docker build -t python-app .
```

This will create an image named `python-app`.

---

### Step 4: Run the Container

Run the following command to start a container from the created image and bind it to port 8086 on your machine:

```bash
docker run -d -p 8086:5000 python-app
```

This command runs the container in the background (`-d`) and maps port 8086 on your local machine to port 5000 in the container.

---

### Step 5: Test the Application

Open your browser and go to [http://localhost:8086](http://localhost:8086). You should see the message:
(https://github.com/AngeloDUF/PD_python.git)

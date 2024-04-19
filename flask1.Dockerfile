# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask application to the container
COPY flask1.py .

# Expose the port that the Flask application will run on
EXPOSE 8080

# Set the entrypoint command to run the Flask application
CMD ["python", "flask1.py"]



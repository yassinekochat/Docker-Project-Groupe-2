FROM alpine:3.16

# Install dependencies
RUN apk add --no-cache python3 py3-pip

# Install required Python packages
RUN pip3 install flask mysql-connector-python gunicorn

# Set working directory
WORKDIR /app

# Copy application code
COPY ./src /app

# Expose the port for the application
EXPOSE 4743

# Command to run the application
CMD ["gunicorn", "--bind", "0.0.0.0:4743", "app:app"]

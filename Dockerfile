# Use an official Python runtime as a parent image
FROM python:3.8

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Install system dependencies including build tools and git
RUN apt-get update && apt-get install -y \
    gcc \
    build-essential \
    libpq-dev \
    git

# Install Python dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install pre-commit

# Copy the Django project code into container
COPY . /app/

# Expose port 8000 for Django application
EXPOSE 8000

# Start the Django application with Gunicorn
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

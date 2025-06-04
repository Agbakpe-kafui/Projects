# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Set environment variables to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install Python and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv htop && \
    apt-get clean && \
    #rm -rf /var/lib/apt/lists/*

# Set python3 as default python
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 1

# Set working directory
WORKDIR /app

# Optionally copy requirements.txt and install dependencies
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

CMD ["python"]
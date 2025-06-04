# Projects
My personal Docker container for writing code

## Overview
This Docker container provides a Python development environment based on Ubuntu 22.04 with Python 3, pip, and essential development tools.

## Building and Running the Container

### Start the development environment
```bash
# Build and start the container in detached mode
docker-compose up -d

# Build and start with logs visible
docker-compose up

# Force rebuild and start
docker-compose up --build
```

## Interacting with the Container

### Access the container's terminal
```bash
# Open an interactive bash session
docker-compose exec projects bash

# Open an interactive Python session
docker-compose exec projects python
```

### Managing the container
```bash
# Start the services
docker-compose start

# Stop the services
docker-compose stop

# Stop and remove containers
docker-compose down

# Stop, remove containers, and remove volumes
docker-compose down -v
```

### Viewing logs and status
```bash
# View container logs
docker-compose logs projects

# Follow logs in real-time
docker-compose logs -f projects

# Check running services
docker-compose ps
```

## Working with Files
- Your local directory is automatically mounted to `/app` in the container
- Any changes you make locally will be reflected inside the container
- Use `htop` inside the container to monitor system resources
- Python is available as both `python` and `python3` commands

## Development Workflow
```bash
# 1. Start your development environment
docker-compose up -d

# 2. Access the container terminal
docker-compose exec projects bash

# 3. Work on your code (files are synced automatically)

# 4. When done, stop the environment
docker-compose stop
``` 

#!/bin/bash

# Clone the repository with the specified branch
git clone -b dev_shiming https://github.com/proflulab/Lulab_website.git

# Change the working directory to the cloned repository
cd Lulab_website

# Start the Docker Compose services in detached mode
docker-compose up -d

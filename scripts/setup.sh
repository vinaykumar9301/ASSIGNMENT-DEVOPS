#!/bin/bash

set -e

# Function to log messages
log() {
    echo "$(date +"%Y-%m-%d %T") - $1"
}

log "Starting setup"

# Update package lists
log "Updating package lists"
sudo apt-get update

# Install Node.js and npm
log "Installing Node.js and npm"
sudo apt-get install -y nodejs npm

# Install AWS CLI
log "Installing AWS CLI"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf awscliv2.zip aws/

# Install Elastic Beanstalk CLI
log "Installing Elastic Beanstalk CLI"
pip install --user awsebcli
export PATH=$PATH:~/.local/bin

# Verify installations
log "Verifying installations"
node -v
npm -v
aws --version
eb --version

# Configure AWS CLI
log "Configuring AWS CLI"
aws configure

# Initialize Elastic Beanstalk
log "Initializing Elastic Beanstalk"
eb init

log "Setup completed successfully"

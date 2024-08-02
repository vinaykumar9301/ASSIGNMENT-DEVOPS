#!/bin/bash

set -e

# Function to log messages
log() {
    echo "$(date +"%Y-%m-%d %T") - $1"
}

log "Starting deployment to Elastic Beanstalk"

# Set the environment name (replace 'your-environment-name' with the actual environment name)
ENV_NAME="your-environment-name"

log "Using environment: $ENV_NAME"

# Initialize Elastic Beanstalk if not already done (Uncomment if needed)
# log "Initializing Elastic Beanstalk"
# eb init -p docker my-app --region us-east-1

# Use the specified environment
log "Selecting Elastic Beanstalk environment"
eb use "$ENV_NAME"

# Deploy the application
log "Deploying application"
eb deploy

log "Deployment completed successfully"

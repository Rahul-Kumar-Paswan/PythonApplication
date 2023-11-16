#!/bin/bash
set -e

# Authenticate Docker with ECR
/usr/bin/aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/i4l4g3c7
# Pull the Docker image from ECR
/usr/bin/docker pull  rahul/repo:latest public.ecr.aws/i4l4g3c7/rahul/repo:latest

# Run the Docker image as a containers
/usr/bin/docker run -d -p 8000:5000 rahul/repo:latest public.ecr.aws/i4l4g3c7/rahul/repo:latest

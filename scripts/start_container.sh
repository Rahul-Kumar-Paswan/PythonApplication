#!/bin/bash
set -e

# Authenticate Docker with ECR Public in a non-interactive way
#aws aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/a4i5r6b0

# Pull the Docker image from ECR Public
docker pull public.ecr.aws/a4i5r6b0/python:latest

# Run the Docker image as containers
docker run -d -p 8000:8000 public.ecr.aws/a4i5r6b0/python:latest

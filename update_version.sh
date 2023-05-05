#!/bin/bash

# Get current branch name
branch=$(git rev-parse --abbrev-ref HEAD)

# Get total number of commits on the branch
total_commits=$(git rev-list --count HEAD)

# Set version as branch name + total number of commits
version="$branch.$total_commits"

# Write version to .env file
echo "APP_VERSION=$version" > .env

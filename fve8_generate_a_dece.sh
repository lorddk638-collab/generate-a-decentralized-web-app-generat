#!/bin/bash

# Function to generate a new decentralized web app
generate_app() {
  local app_name=$1
  local repo_url=$2

  # Create a new directory for the app
  mkdir -p $app_name

  # Initialize a new Git repository
  cd $app_name
  git init
  git remote add origin $repo_url

  # Create a basic HTML file
  echo "<html><body>Welcome to $app_name!</body></html>" > index.html

  # Create a basic JavaScript file
  echo "console.log('Hello, World!');" > script.js

  # Create a basic IPFS configuration file
  echo "{ \"ipfs\": { \"repo\": \"$app_name\" } }" > ipfs.json

  # Add all files to the Git repository
  git add .
  git commit -m "Initial commit"

  # Push the changes to the remote repository
  git push -u origin master
}

# Test case: Generate a new app called "myapp" with a repository URL
generate_app "myapp" "https://github.com/myuser/myapp.git"
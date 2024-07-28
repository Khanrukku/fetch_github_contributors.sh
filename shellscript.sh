#!/bin/bash
###################
#############################################################################################################################
                                       #### Author: RUKAIYA KHAN
                                       ### Date : 26 july 2024
#################  A simple shell script to fetch and list contributors of a specified GitHub repository using the GitHub API  ######################

# Function to print usage
print_usage() {
  echo "Usage: $0 <owner> <repo>"
  echo "Example: $0 torvalds linux"
  exit 1
}

# Function to fetch contributors from GitHub API
fetch_contributors() {
  local owner="$1"
  local repo="$2"
  
  # GitHub API URL for the repository's contributors
  local url="https://api.github.com/repos/$owner/$repo/contributors"
  
  # Fetch contributors using curl
  curl -s "$url" | jq -r '.[] | "\(.login) (\(.contributions) contributions)"'
}

# Check if jq is installed
if ! command -v jq &> /dev/null; then
  echo "jq is required but not installed. Please install jq."
  exit 1
fi

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
  print_usage
fi

# Get the owner and repo from arguments
owner="$1"
repo="$2"

# Fetch and display contributors
fetch_contributors "$owner" "$repo"

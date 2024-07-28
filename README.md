
# Fetch GitHub Contributors Script

This script fetches and lists the contributors of a specified GitHub repository using the GitHub API.

## Prerequisites

- **jq**: The script uses `jq` to parse the JSON response from the GitHub API. You need to have `jq` installed on your system.

### Installation of jq

For Debian/Ubuntu:
```sh
sudo apt-get install jq
For macOS using Homebrew:
brew install jq
```

## Usage

Save the script to a file, for example, fetch_github_contributors.sh.
Make the script executable:
```sh
chmod +x fetch_github_contributors.sh
```
Run the script, providing the GitHub repository owner and repository name as arguments:

```sh

./fetch_github_contributors.sh <owner> <repo>
```
Replace <owner> with the GitHub username or organization name, and <repo> with the repository name.

## Script Details

The script performs the following steps:

Print usage function:
This function prints the correct usage of the script and an example.

Fetch contributors function:
This function fetches the contributors from the GitHub API using curl and formats the output using jq.

Check if jq is installed:
The script checks if jq is installed on your system and prompts you to install it if it's not found.

Check if the correct number of arguments is provided:
The script verifies that you provided the correct number of arguments (owner and repo).

Get the owner and repo from arguments and fetch contributors:
The script uses the provided owner and repository name to fetch and display the list of contributors.

## Notes

The GitHub API has rate limits. If you exceed these limits, the script might fail. You can check the GitHub API documentation for more information.
The script only fetches the first 100 contributors due to API limitations. For repositories with more contributors, you might need to implement pagination.

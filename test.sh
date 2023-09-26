#!/bin/bash

# Replace these values with your own
GITHUB_REPO_OWNER="your-username"
GITHUB_REPO_NAME="your-repo-name"
GITHUB_PAT="your-personal-access-token"

# Check if the workflow name is provided as a command-line argument
if [ $# -eq 0 ]; then
  echo "Usage: $0 <workflow-name>"
  exit 1
fi

WORKFLOW_NAME="$1"

# Trigger the specified workflow
curl -X POST \
  -H "Authorization: token $GITHUB_PAT" \
  -H "Accept: application/vnd.github.v3+json" \
  "https://api.github.com/repos/$GITHUB_REPO_OWNER/$GITHUB_REPO_NAME/actions/workflows/$WORKFLOW_NAME/dispatches" \
  -d '{"ref": "main", "inputs": {"trigger": "deploy_aws_test"}}'

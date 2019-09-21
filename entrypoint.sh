#!/bin/bash

set -e 
set -u

echo ""
echo "Searching for secrets to reveal ..."

gitleaks -v --exclude-forks --redact --threads=1 \
  --branch=$GITHUB_REF \
  --repo-path=$GITHUB_WORKSPACE \

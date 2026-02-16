#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: bash scripts/init-org-github.sh <target-dir>"
  echo "Example: bash scripts/init-org-github.sh $HOME/projects/org-dotgithub"
  exit 1
fi

TARGET_DIR="$1"

if [[ -e "$TARGET_DIR" ]]; then
  echo "Target already exists: $TARGET_DIR"
  exit 1
fi

mkdir -p "$TARGET_DIR"
cp -r templates/org-github/. "$TARGET_DIR/"

echo "Created org .github scaffold: $TARGET_DIR"

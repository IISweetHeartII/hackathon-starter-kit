#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: bash scripts/bootstrap.sh <project-name>"
  echo "Example: bash scripts/bootstrap.sh 2026-chungryongthon-404"
  exit 1
fi

PROJECT_NAME="$1"
TARGET_DIR="/home/sweetheart/projects/$PROJECT_NAME"

if [[ -e "$TARGET_DIR" ]]; then
  echo "Target already exists: $TARGET_DIR"
  exit 1
fi

mkdir -p "$TARGET_DIR/frontend" "$TARGET_DIR/backend" "$TARGET_DIR/ai" "$TARGET_DIR/docs"

cp -r templates/frontend/. "$TARGET_DIR/frontend/"
cp -r templates/backend/. "$TARGET_DIR/backend/"
cp -r templates/ai/. "$TARGET_DIR/ai/"
cp docs/checklists/demo-day.md "$TARGET_DIR/docs/demo-day-checklist.md"
cp docs/playbook.md "$TARGET_DIR/docs/hackathon-playbook.md"

echo "Created project scaffold: $TARGET_DIR"

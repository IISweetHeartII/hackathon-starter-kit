#!/usr/bin/env bash

set -euo pipefail

usage() {
  echo "Usage: bash scripts/bootstrap.sh <project-name> [--backend spring|nest]"
  echo "Example: bash scripts/bootstrap.sh 2026-chungryongthon-404 --backend spring"
}

if [[ $# -lt 1 ]]; then
  usage
  exit 1
fi

PROJECT_NAME="$1"
shift

BACKEND="spring"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --backend)
      if [[ $# -lt 2 ]]; then
        echo "Missing value for --backend"
        usage
        exit 1
      fi
      BACKEND="$2"
      shift 2
      ;;
    *)
      echo "Unknown option: $1"
      usage
      exit 1
      ;;
  esac
done

if [[ "$BACKEND" != "spring" && "$BACKEND" != "nest" ]]; then
  echo "Invalid backend: $BACKEND"
  echo "Allowed values: spring, nest"
  exit 1
fi

TARGET_DIR="/home/sweetheart/projects/$PROJECT_NAME"

if [[ -e "$TARGET_DIR" ]]; then
  echo "Target already exists: $TARGET_DIR"
  exit 1
fi

mkdir -p "$TARGET_DIR/frontend" "$TARGET_DIR/backend" "$TARGET_DIR/ai" "$TARGET_DIR/docs"

cp -r templates/next/. "$TARGET_DIR/frontend/"
cp -r "templates/$BACKEND/." "$TARGET_DIR/backend/"
cp -r templates/ai/. "$TARGET_DIR/ai/"
cp docs/checklists/demo-day.md "$TARGET_DIR/docs/demo-day-checklist.md"
cp docs/playbook.md "$TARGET_DIR/docs/hackathon-playbook.md"

echo "Created project scaffold: $TARGET_DIR"
echo "Frontend template: next"
echo "Backend template: $BACKEND"

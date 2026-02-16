#!/usr/bin/env bash

set -euo pipefail

usage() {
  echo "Usage: bash scripts/bootstrap.sh <project-name> [--frontend next|vite|expo] [--backend spring|nest|fastapi|python] [--output-dir <path>]"
  echo "Example: bash scripts/bootstrap.sh 2026-chungryongthon-404 --frontend vite --backend fastapi"
}

if [[ $# -lt 1 ]]; then
  usage
  exit 1
fi

PROJECT_NAME="$1"
shift

BACKEND="spring"
FRONTEND="next"
BASE_DIR="${HACKATHON_BASE_DIR:-$HOME/projects}"

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
    --frontend)
      if [[ $# -lt 2 ]]; then
        echo "Missing value for --frontend"
        usage
        exit 1
      fi
      FRONTEND="$2"
      shift 2
      ;;
    --output-dir)
      if [[ $# -lt 2 ]]; then
        echo "Missing value for --output-dir"
        usage
        exit 1
      fi
      BASE_DIR="$2"
      shift 2
      ;;
    *)
      echo "Unknown option: $1"
      usage
      exit 1
      ;;
  esac
done

if [[ "$BACKEND" == "python" ]]; then
  BACKEND="fastapi"
fi

if [[ "$BACKEND" != "spring" && "$BACKEND" != "nest" && "$BACKEND" != "fastapi" ]]; then
  echo "Invalid backend: $BACKEND"
  echo "Allowed values: spring, nest, fastapi"
  exit 1
fi

if [[ "$FRONTEND" != "next" && "$FRONTEND" != "vite" && "$FRONTEND" != "expo" ]]; then
  echo "Invalid frontend: $FRONTEND"
  echo "Allowed values: next, vite, expo"
  exit 1
fi

TARGET_DIR="$BASE_DIR/$PROJECT_NAME"

if [[ -e "$TARGET_DIR" ]]; then
  echo "Target already exists: $TARGET_DIR"
  exit 1
fi

mkdir -p "$TARGET_DIR/frontend" "$TARGET_DIR/backend" "$TARGET_DIR/ai" "$TARGET_DIR/docs"

cp -r "templates/$FRONTEND/." "$TARGET_DIR/frontend/"
cp -r "templates/$BACKEND/." "$TARGET_DIR/backend/"
cp -r templates/ai/. "$TARGET_DIR/ai/"
cp docs/checklists/demo-day.md "$TARGET_DIR/docs/demo-day-checklist.md"
cp docs/playbook.md "$TARGET_DIR/docs/hackathon-playbook.md"

echo "Created project scaffold: $TARGET_DIR"
echo "Frontend template: $FRONTEND"
echo "Backend template: $BACKEND"
echo "Base directory: $BASE_DIR"

# hackathon-starter-kit

Reusable starter structure for my hackathon projects.

## Goal

- Start fast with consistent project structure
- Reuse checklists, playbooks, and setup scripts
- Keep each hackathon repo clean and predictable

## Structure

- `templates/frontend/` - Frontend starter notes and TODOs
- `templates/backend/` - Backend starter notes and TODOs
- `templates/ai/` - AI feature integration starter notes
- `docs/checklists/` - Pre-launch and demo-day checklists
- `docs/playbook.md` - End-to-end hackathon execution playbook
- `scripts/bootstrap.sh` - Creates a new hackathon workspace scaffold

## Usage

```bash
bash scripts/bootstrap.sh 2026-chungryongthon-team404
```

This creates:

- `projects/2026-chungryongthon-team404/frontend`
- `projects/2026-chungryongthon-team404/backend`
- `projects/2026-chungryongthon-team404/ai`
- `projects/2026-chungryongthon-team404/docs`

## Naming Rule

Use `YYYY-event-team` format for project folders and repositories.

Examples:

- `2026-umc9-team4`
- `2026-chungryongthon-404`

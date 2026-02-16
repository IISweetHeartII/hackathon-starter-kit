# hackathon-starter-kit

Reusable starter structure for my hackathon projects (Next.js + Spring/Nest/FastAPI + AI).

## Goal

- Start fast with consistent project structure
- Reuse checklists, playbooks, and setup scripts
- Keep each hackathon repo clean and predictable

## Structure

- `templates/next/` - Next.js-focused frontend checklist and conventions
- `templates/spring/` - Spring Boot backend checklist and conventions
- `templates/nest/` - NestJS backend checklist and conventions
- `templates/fastapi/` - FastAPI backend starter files and run guide
- `templates/ai/` - AI feature integration starter notes
- `docs/checklists/` - Pre-launch and demo-day checklists
- `docs/playbook.md` - End-to-end hackathon execution playbook
- `docs/index.md` - Quick landing page for stack overview and setup
- `stack-versions.md` - Recommended baseline versions for each stack
- `scripts/bootstrap.sh` - Creates a new hackathon workspace scaffold

## Usage

```bash
# default: next + spring + ai
bash scripts/bootstrap.sh 2026-chungryongthon-404

# next + nest + ai
bash scripts/bootstrap.sh 2026-umc10-teamx --backend nest

# next + fastapi + ai
bash scripts/bootstrap.sh 2026-ai-night --backend fastapi

# alias also supported
bash scripts/bootstrap.sh 2026-ai-night --backend python
```

This creates:

- `projects/<project-name>/frontend`
- `projects/<project-name>/backend`
- `projects/<project-name>/ai`
- `projects/<project-name>/docs`

## Suggested Defaults

- Frontend: Next.js + TypeScript + Tailwind
- Backend: Spring Boot, NestJS, or FastAPI
- AI: OpenAI / Anthropic / Gemini integration with fallback mode
- DB: Postgres/Supabase/Neon
- Deploy: Vercel + Railway/Render/Fly

See `stack-versions.md` for version recommendations.

## Naming Rule

Use `YYYY-event-team` format for project folders and repositories.

Examples:

- `2026-umc9-team4`
- `2026-chungryongthon-404`

## Open Source and Org Usage

- You can keep this repository on your personal account and still generate repositories under any org.
- If this repository is marked as a template, you can create new project repos from GitHub UI or CLI.

Example:

```bash
gh repo create "umc9-hackathon-team4/2026-umc10-teamx" \
  --private \
  --template "IISweetHeartII/hackathon-starter-kit"
```

## Why This Starter Exists

- Fast kickoff for 24-72 hour hackathons
- Stable demo strategy with fallback-ready AI flow
- Reusable team operating playbook

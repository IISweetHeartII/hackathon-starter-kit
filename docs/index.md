# Hackathon Starter Kit

Build and demo faster with reusable project scaffolds.

## Included Presets

- **Frontend**: Next.js + TypeScript baseline
- **Backend**:
  - Spring Boot
  - NestJS
  - FastAPI (Python)
- **AI**: Integration checklist with fallback-first approach

## Folder Blueprint

```text
<project-name>/
  frontend/
  backend/
  ai/
  docs/
```

## Quick Start

```bash
# default (next + spring)
bash scripts/bootstrap.sh 2026-chungryongthon-404

# next + nest
bash scripts/bootstrap.sh 2026-umc10-teamx --backend nest

# next + fastapi
bash scripts/bootstrap.sh 2026-ai-night --backend fastapi
```

## Open Source Usage

Use this repository as a GitHub template to create project repositories under your personal account or any org.

```bash
gh repo create "my-org/2026-demo-team" \
  --private \
  --template "IISweetHeartII/hackathon-starter-kit"
```

## More Docs

- [Playbook](./playbook.md)
- [Demo Checklist](./checklists/demo-day.md)
- [Stack Versions](../stack-versions.md)

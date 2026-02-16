# Hackathon Starter Kit

Build and demo faster with reusable project scaffolds.

## Included Presets

- **Frontend**:
  - Next.js + TypeScript
  - Vite + React + TypeScript
  - Expo (React Native)
- **Backend**:
  - Spring Boot
  - NestJS
  - FastAPI (Python)
- **AI**: Integration checklist with fallback-first approach
- **Org Setup**: `.github` templates (org profile, issue/PR templates, CODEOWNERS)
- **Deploy**: Vercel + Railway quick guides

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

# vite + spring
bash scripts/bootstrap.sh 2026-quick-mvp --frontend vite

# expo + nest
bash scripts/bootstrap.sh 2026-mobile-demo --frontend expo --backend nest

# next + nest
bash scripts/bootstrap.sh 2026-umc10-teamx --backend nest

# next + fastapi
bash scripts/bootstrap.sh 2026-ai-night --backend fastapi

# org .github skeleton
bash scripts/init-org-github.sh /home/sweetheart/projects/my-org-dotgithub
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
- [Deploy on Vercel](../deploy/vercel.md)
- [Deploy on Railway](../deploy/railway.md)

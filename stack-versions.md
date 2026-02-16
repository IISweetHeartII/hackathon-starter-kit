# Stack Versions (Recommended Baseline)

These are practical defaults for hackathon speed and stability.

Last validated: 2026-02-16

## Frontend

- Node.js: 20.x LTS
- Next.js: 16.1.x
- Vite: 7.3.x
- React: 19.2.x
- Expo SDK: 54.0.x
- React Native: 0.84.x
- TypeScript: 5.8+
- Tailwind CSS: 4.x

## Backend

### Spring Boot Track
- Java: 21 LTS
- Spring Boot: 4.0.x
- Gradle: 8.10+

### NestJS Track
- Node.js: 20.x LTS
- NestJS: 11.1.x
- TypeScript: 5.8+

### FastAPI Track
- Python: 3.11+
- FastAPI: 0.129.x
- Uvicorn: 0.40.x
- python-dotenv: 1.2.x

## AI Integration

- Vercel AI SDK (optional in JS stack)
- OpenAI / Anthropic / Gemini SDKs
- Always include demo-safe fallback path

## Infra

- Postgres 16+
- Redis 7+

## Versioning Rule

During active hackathon work, prioritize stable major versions and avoid major upgrades.

## Validation Commands

```bash
npm view next version
npm view vite version
npm view expo version
npm view react-native version
npm view @nestjs/core version
python3 -m pip index versions fastapi
python3 -m pip index versions uvicorn
gh release view -R spring-projects/spring-boot --json tagName,publishedAt
```

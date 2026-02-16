# Deploy Backend on Railway

Use this guide for `spring`, `nest`, and `fastapi` backends.

## 1) Create Project

1. Open Railway and click **New Project**.
2. Choose **Deploy from GitHub repo**.
3. Select your repository.

If monorepo: set **Root Directory** to `backend`.

## 2) Runtime

- If `backend/Dockerfile` exists, Railway uses Docker.
- Without Dockerfile, Railway may use Nixpacks.

For hackathon predictability, Docker deployment is recommended.

## 3) Environment Variables

Set secrets in Railway UI only.

Typical variables:

- `PORT`
- `DATABASE_URL`
- `OPENAI_API_KEY` / `GEMINI_API_KEY`
- `DEMO_SAFE_MODE=true`

## 4) Health Check

Expose `/health` endpoint and ensure it returns 200.

## 5) Verify

- Open Railway service URL
- Test `/health`
- Test one core API path from frontend

## Demo-Safe Tip

If external AI API fails, return fallback payload instead of 500.

# Deploy Frontend on Vercel

Use this guide for `next`, `vite`, or web output from `expo`.

## 1) Connect Repository

1. Push your project to GitHub.
2. Open Vercel and click **Add New... > Project**.
3. Import your repository.

## 2) Set Root Directory

- Monorepo: set **Root Directory** to `frontend`.
- Frontend-only repository: keep default root.

## 3) Build Settings

### Next.js

- Framework Preset: `Next.js`
- Build/Output: defaults

### Vite

- Framework Preset: `Vite`
- Build Command: `npm run build`
- Output Directory: `dist`

### Expo Web

- Build Command: `npm run web`
- Output Directory: as configured by your Expo web build

## 4) Environment Variables

Add frontend env vars in Vercel Project Settings.

Examples:

- `NEXT_PUBLIC_API_BASE_URL`
- `VITE_API_BASE_URL`

## 5) Deploy and Verify

- Click **Deploy**.
- Verify home page and one backend-connected feature.

## Demo-Safe Tip

Always keep a fallback for backend outage:

- demo data mode
- outage banner
- deterministic happy-path route

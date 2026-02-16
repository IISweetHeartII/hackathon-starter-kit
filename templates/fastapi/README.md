# FastAPI Template

Use this folder as a runnable Python backend starter.

## Included

- `app/main.py.template` with `GET /health` and `POST /ai/echo`
- `requirements.txt` with FastAPI + Uvicorn
- `.env.example` for API key and demo mode

## Run

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
cp app/main.py.template app/main.py
uvicorn app.main:app --reload --port 8000
```

Then open: `http://localhost:8000/health`

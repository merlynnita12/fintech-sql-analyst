# 🏦 The Fintech SQL Analyst

A practical SQL course built on real fintech data, designed for analysts who want to level up beyond the basics.

## Quick Start

**Requirements:** Docker Desktop + Git

```bash
# 1. Clone the repo
git clone https://github.com/YOUR_USERNAME/fintech-sql-analyst.git
cd fintech-sql-analyst

# 2. Start the database
docker compose up -d

# 3. Verify it's running
docker compose ps

# 4. Connect and query
docker exec -it fintech-postgres psql -U analyst -d fintech_db
```

**Connection details for DBeaver / PyCharm:**
- Host: `localhost` | Port: `5432`
- Database: `fintech_db` | User: `analyst` | Password: `analyst123`

## Dataset

Real Wise (international money transfer) data — 1,000 transfer records spanning multiple countries, currencies, and payment methods.

## Repo Structure

```
├── docker-compose.yml
├── sql/
│   ├── seed/           # Auto-loaded schema + data
│   ├── exercises/      # Practice problems by chapter
│   └── solutions/      # Reference answers
└── notebooks/          # Python + SQL notebooks
```

## Full Setup Guide

See `docs/setup_guide.docx` for step-by-step instructions covering Docker, PyCharm, and GitHub.

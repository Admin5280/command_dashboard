# 5280 Command Center

Internal dashboard app for 5280 Mobile Detailing / Auto Studio.
Runs locally in your browser. Data is saved in the browser (localStorage) — no login, no server, no database.

---

## Quick start (easiest)

1. Double-click **`START-HERE.command`** in this folder.
2. The first run installs what it needs (a few minutes), then the app opens at **http://localhost:3000**.
3. Leave the black Terminal window open while you use the app. To stop, close that window.

> If macOS says *"cannot be opened because it is from an unidentified developer,"* right-click **START-HERE.command → Open → Open**. You only have to do this once.

---

## Manual start (if you prefer the Terminal)

```bash
cd "command-center"
npm install     # first time only
npm run dev
```

Then open http://localhost:3000

Requires **Node.js** (LTS). If you don't have it, get it from https://nodejs.org, run the installer, then try again.

---

## What's inside

| Page | What it does |
|------|--------------|
| **Overview** | Company KPIs + Care Club recurring-revenue snapshot |
| **Care Club** | Membership dashboard, members, visits, perks, guardrails |
| **Leads** | 22-field lead records, Confirmed-Source reporting, Booked Leads view |
| **Jobs** | Production data — auto-fills from Lead ID, revenue & balance formulas |
| **Marketing** | Ad spend / channel performance |
| **Sales** | Per-rep performance |
| **Operations** | Production by technician |
| **Payroll** | Tech commission + sales commission (rates set in Settings) |
| **Finance** | Revenue, collections, outstanding balances, Care Club MRR/ARR |
| **Audit** | Data-integrity guardrails + reconciliation + Care Club checks |
| **Settings** | Dropdown lists, team, **Pay Rules**, JSON backup/restore |

---

## Your data

- Everything is stored **in this browser only**. Using a different browser or computer starts empty.
- Back up regularly: **Settings → Export JSON Backup**. Restore with **Import JSON Backup**.
- **Settings → Reset to Sample** reloads demo data; **Clear All Records** empties it.

---

## Notes

- This is the current phase: Leads/Jobs full model, pay engine, Payroll, Audit, Care Club integration.
- Not yet included (by design): real login, cloud database, GoHighLevel/Urable syncing.
- This Desktop copy is a **portable snapshot**. The GitHub/Vercel version is pushed separately.

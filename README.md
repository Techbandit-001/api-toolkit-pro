# 🚀 API Toolkit Pro

A beginner-friendly dual-interface project that demonstrates API consumption using both:

- 🖥️ Bash CLI tool
- 🌐 Browser-based web dashboard

This repository includes a full capstone-style learning guide in `toolkit.md`.

## 📘 Start here
For complete documentation, AI prompt journal, step-by-step setup, and troubleshooting, open `toolkit.md`.

## 🔧 What is included
- `toolkit.sh` — Bash CLI menu for fetching jokes and quotes
- `web-toolkit/index.html` — JavaScript web app with API fetch logic
- `toolkit.md` — detailed beginner toolkit documentation

## 🛠️ Quick start

### Install dependencies
```bash
sudo apt update
sudo apt install curl jq
```

### Run CLI version
```bash
chmod +x toolkit.sh
./toolkit.sh
```

### Run Web version
Open `web-toolkit/index.html` in a browser.

## 📂 Project structure
- `toolkit.sh` — CLI interface using `curl` and `jq`
- `web-toolkit/index.html` — browser dashboard with JavaScript fetch logic
- `toolkit.md` — complete capstone-style toolkit document

## 📌 APIs used
- Joke API: `https://official-joke-api.appspot.com/random_joke`
- Quote API: `https://api.quotable.io/random`

## 💡 Why this project
This toolkit teaches how to:

- Make REST API requests from Bash and the browser
- Parse JSON output cleanly
- Build a simple CLI menu
- Craft a polished web UI with loading states
- Document the learning process using AI prompts

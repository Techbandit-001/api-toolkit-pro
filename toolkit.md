# 🧠 Prompt-Powered Kickstart: Building a Beginner’s API Toolkit

## 1. Title & Objective

**Project title:** Prompt-Powered Kickstart: Building a Beginner’s API Toolkit with Bash + Web UI

**Chosen technology:** Bash scripting and browser JavaScript for API consumption.

**Why this tech?**
- Bash is a practical entry point for command-line automation and API testing.
- JavaScript + HTML enables a lightweight web dashboard for the same API experience.
- The project demonstrates how to use real APIs without complex frameworks.

**End goal:**
Build a beginner-friendly toolkit that fetches a random joke or quote from public APIs using:
- a CLI Bash script
- a browser-based SaaS-style web interface

## 2. Quick Summary of the Technology

### What is it?
This project is a small toolkit that shows how to call REST APIs, parse JSON results, and display output cleanly both in the terminal and in the browser.

### Where is it used?
- CLI API testing
- Learning API authentication-free requests
- Beginner front-end fetch examples
- Rapid prototyping of simple developer tools

### Real-world example
A developer can use the Bash CLI to quickly verify API availability during development. The browser UI demonstrates how to display API results in a polished interface.

## 3. System Requirements

### OS
- Linux
- macOS
- Windows (WSL or browser support)

### Tools/Editors
- Terminal or shell environment
- Text editor such as VS Code
- Web browser for the web demo

### Required packages
- `curl`
- `jq`

## 4. Installation & Setup Instructions

### Step 1: Clone the repository
```bash
git clone <repo-url>
cd bash-api-toolkit
```

### Step 2: Install dependencies for CLI
```bash
sudo apt update
sudo apt install curl jq
```

### Step 3: Make the Bash script executable
```bash
chmod +x toolkit.sh
```

### Step 4: Run the CLI version
```bash
./toolkit.sh
```

### Step 5: Open the web version
Open `web-toolkit/index.html` in your browser.

> If you are using WSL and need a quick browser launch, run:
```bash
explorer.exe .
```

## 5. Minimal Working Example

### What the example does
The toolkit fetches and displays either:
- a random joke from `https://official-joke-api.appspot.com/random_joke`
- or a random quote from `https://api.quotable.io/random`

The CLI version uses `curl` + `jq` and prints formatted output.
The web version uses `fetch` with timeout handling and updates the DOM.

### CLI example code snippet
```bash
curl -s https://official-joke-api.appspot.com/random_joke \
  | jq -r '"🤣 \(.setup)\n👉 \(.punchline)"'
```

### Browser example code snippet
```js
async function getQuote() {
  const data = await fetchWithTimeout("https://api.quotable.io/random");
  lastOutput = `💬 ${data.content}\n— ${data.author}`;
  document.getElementById("output").innerText = lastOutput;
}
```

### Expected output
- CLI joke output:
  `🤣 Why did the chicken cross the road?\n👉 To get to the other side!`
- Web quote output:
  `💬 The best way out is always through.\n— Robert Frost`

## 6. AI Prompt Journal

This project was built using a prompt-assisted workflow to explore Bash, curl, jq, and simple browser API integration.

### Prompt 1
**Prompt used:**
`Give me a step-by-step guide to build a Bash menu-driven API tool that fetches JSON and formats it with jq.`

**AI response summary:**
- Setup menu loop
- Use `curl -s` for silent API requests
- Pipe to `jq` for JSON extraction
- Add user prompts and exit condition

**How it helped:**
It gave the exact structure needed to scaffold `toolkit.sh` and helped me avoid common Bash menu issues.

### Prompt 2
**Prompt used:**
`How do I build a simple browser dashboard that fetches a joke API and handles request timeouts in JavaScript?`

**AI response summary:**
- Use `fetch` with `AbortController`
- Display loading states in the UI
- Add buttons for multiple actions
- Append history logs

**How it helped:**
The response clarified how to implement user feedback and a safe timeout wrapper for browser fetch calls.

### Prompt 3
**Prompt used:**
`What are common errors when using curl with jq, and how do I fix them?`

**AI response summary:**
- Handle missing dependencies
- Manage network timeouts
- Validate JSON before parsing
- Use `jq -r` for raw strings

**How it helped:**
It improved the robustness of the CLI script and influenced the troubleshooting section in this document.

## 7. Common Issues & Fixes

### Issue: `jq` not found
**Cause:** `jq` is not installed.
**Fix:**
```bash
sudo apt install jq
```

### Issue: API not loading in browser
**Cause:** Network or remote API outage.
**Fix:**
- Check internet connectivity
- Reload the page
- Try later if the API service is temporarily unavailable

### Issue: Web fetch request times out
**Cause:** Slow response or network error.
**Fix:**
- Increase the timeout value in `fetchWithTimeout`
- Confirm the remote API URL is reachable

### Issue: WSL browser launch fails
**Cause:** `xdg-open` or browser integration not available.
**Fix:**
```bash
explorer.exe .
```

## 8. References

- Official `curl` documentation: https://curl.se/docs/
- Official `jq` documentation: https://stedolan.github.io/jq/
- Quotable API: https://api.quotable.io/
- Official Joke API: https://official-joke-api.appspot.com/

## 9. Codebase Structure

- `toolkit.sh` — Bash CLI menu and API interface
- `README.md` — Project overview and quick start
- `toolkit.md` — Detailed beginner toolkit documentation
- `web-toolkit/index.html` — Browser dashboard with API fetch logic

## 10. How to submit

- Add this repository to GitHub
- Or package the project as a ZIP file

> Deliverable checklist:
> - `toolkit.md` documentation
> - `README.md` with run instructions
> - Working CLI and web app code
> - AI prompt journal and troubleshooting notes

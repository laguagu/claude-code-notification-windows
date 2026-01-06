# Claude Code Notification for Windows

Visual popup notification when Claude Code finishes a task. Works with **Git Bash**, **PowerShell**, and **CMD**.

## Problem

Windows users often have issues with Claude Code notifications:

- Terminal bell doesn't work
- Toast notifications fail

## Options

### Option 1: Visual Popup 🪟

A popup appears at the bottom center of the screen and auto-closes after 2.5 seconds.

**Setup:**

1. Copy `notify.ps1` → `C:\Users\YOUR_USERNAME\.claude\notify.ps1`
2. Copy `settings.example.json` → `C:\Users\YOUR_USERNAME\.claude\settings.json`

> 📌 **Note:** The path in `settings.json` must match where you placed `notify.ps1`

### Option 2: Beep Sound 🔔

Simple beep sound when task completes. No files to copy.

**Setup:**

1. Copy `settings.beep.json` → `C:\Users\YOUR_USERNAME\.claude\settings.json`

## Install Location

| Scope                    | Path                                            |
| ------------------------ | ----------------------------------------------- |
| 🌐 Global (all projects) | `C:\Users\YOUR_USERNAME\.claude\settings.json`  |
| 📁 Project-level         | `YOUR_PROJECT\.claude\settings.json`            |

⚠️ **Restart Claude Code after changes!**

## Customization

Edit `notify.ps1`:

| Setting  | Example                                   |
| -------- | ----------------------------------------- |
| Position | `$form.Location` - change coordinates     |
| Duration | `$timer.Interval = 2500` (2.5 sec)        |
| Text     | `$label.Text = "Claude done"`             |
| Color    | `$label.ForeColor = FromArgb(80,200,120)` |

Edit beep in `settings.beep.json`:

| Setting   | Example                              |
| --------- | ------------------------------------ |
| Frequency | `beep(800,300)` - first number (Hz)  |
| Duration  | `beep(800,300)` - second number (ms) |

## Links

- [Claude Code Hooks Documentation](https://code.claude.com/docs/en/hooks)

## License

MIT

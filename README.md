# Claude Code Notification for Windows

Visual popup notification when Claude Code finishes a task. Works with **Git Bash**, **PowerShell**, and **CMD**.

## Problem

Windows users often have issues with Claude Code notifications:

- Terminal bell doesn't work
- Toast notifications fail

## Options

### Option 1: Visual Popup (recommended)

A popup appears at the bottom center of the screen and auto-closes after 2.5 seconds.

1. Copy `notify.ps1` to `C:\Users\YOUR_USERNAME\.claude\`
2. Use `settings.example.json` as template

### Option 2: Beep Sound

Simple beep sound when task completes. No files to copy.

1. Use `settings.beep.json` as template

## Install

Add hook to your `settings.json`:

- **Global** (all projects): `C:\Users\YOUR_USERNAME\.claude\settings.json`
- **Project-level**: `YOUR_PROJECT\.claude\settings.json`

Then restart Claude Code.

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

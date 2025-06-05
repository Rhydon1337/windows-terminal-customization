# 💻 Windows Terminal Customization

My Windows Terminal customization files – mainly used for development.

This guide will walk you through setting up a modern, developer-friendly terminal experience on Windows using PowerShell and Windows Terminal.

---

## 🧰 What You'll Get

- ✅ Git status and branch in prompt (`posh-git`)
- ✅ File and folder icons (`Terminal-Icons`)
- ✅ Fuzzy search (`fzf` via `PSFzf`)
- ✅ Beautiful prompts (`oh-my-posh`)
- ✅ Proper developer font (`CaskaydiaCove Nerd Font`)

---

## ⚡ 1. Full Setup

Follow these steps in order to fully configure your Windows Terminal.

---

### 1.1 Install Chocolatey

Chocolatey is a package manager for Windows that makes it easy to install tools.

1. Open **PowerShell as Administrator**
2. Paste and run:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; `
[System.Net.ServicePointManager]::SecurityProtocol = `
[System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

### 1.2 Install CLI Tools via Chocolatey

1. Open **PowerShell as Administrator**
2. Paste and run:

```powershell
choco install fzf -y
choco install oh-my-posh -y
```
### 1.3 Install PowerShell Modules

1. Open PowerShell
2. Paste and run:

```powershell
Install-Module Terminal-Icons -Scope CurrentUser -Force
Install-Module posh-git -Scope CurrentUser -Force
Install-Module PSFzf -Scope CurrentUser -Force
Install-Module oh-my-posh -Scope CurrentUser -Force
```

### 1.4 Install CaskaydiaCove Nerd Font

Your terminal prompt will use special icons provided by this patched font.

1. Download the font from: https://www.nerdfonts.com/font-downloads
2. Scroll to CaskaydiaCove Nerd Font, download and extract the ZIP.
3. Right-click each .ttf file and select "Install for all users".

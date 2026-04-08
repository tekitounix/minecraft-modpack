# Contributing to the Modpack

> 🌐 **Language / 言語**: **English** | [日本語](CONTRIBUTING.ja.md)

This guide explains how to contribute to the modpack — adding, updating, or removing mods, and how changes get released to players.

---

## 📋 Table of Contents

1. [Workflow Overview](#-workflow-overview)
2. [Initial Setup](#-initial-setup)
3. [Making Changes](#-making-changes)
4. [Creating a Pull Request](#-creating-a-pull-request)
5. [Merge & Release](#-merge--release)
6. [Discord Notifications](#-discord-notifications-optional)
7. [Directory Structure](#-directory-structure)
8. [Troubleshooting](#-troubleshooting)

---

## 🔄 Workflow Overview

Since **merging to `main` = instant release to all players**, we use a Pull Request (PR) workflow to prevent accidental releases.

```
1. Create branch  →  2. Make changes  →  3. Open PR  →  4. Review/Merge  →  5. Auto-release
```

### Branch Naming

| Change Type | Branch Name Example |
|-------------|-------------------|
| Add a mod | `add/immersive-aircraft` |
| Update a mod | `update/tacz` |
| Remove a mod | `remove/old-mod` |
| Config change | `config/tacz-tweaks` |
| Multiple changes | `update/weekly-2024-01-15` |

### When to Get a Review

| Change Size | Example | Rule |
|-------------|---------|------|
| **Small** | Add/remove 1 mod | Self-merge OK |
| **Medium** | Multiple mods, config changes | Ask 1 person to check |
| **Large** | Forge version change, major restructure | Everyone reviews |

---

## 🛠️ Initial Setup

### Prerequisites

- Git
- Go (for packwiz)
- GitHub CLI (`gh`) — optional but recommended

### Install packwiz

**packwiz** is the tool used to manage mods in this modpack.

```bash
# Install Go (if not already installed)
brew install go          # macOS
# or: sudo apt install golang-go   # Linux

# Install packwiz
go install github.com/packwiz/packwiz@latest

# Add to PATH (append to ~/.zshrc or ~/.bashrc)
echo 'export PATH="$HOME/go/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Verify
packwiz help
```

### Clone the Repository

```bash
git clone https://github.com/tekitounix/minecraft-modpack.git
cd minecraft-modpack
```

---

## ✏️ Making Changes

### Adding Mods

#### From Modrinth / CurseForge (Recommended)

```bash
# Search and install from Modrinth
packwiz modrinth install <mod-name>

# Install from CurseForge
packwiz curseforge install <mod-name>

# Example: Add JEI
packwiz modrinth install jei
```

#### Adding jar files directly (if not on Modrinth/CurseForge)

```bash
# Place the jar file in mods/
cp ~/Downloads/some-mod-1.0.0.jar mods/

# Update the index (no .pw.toml generated; jar is distributed as-is)
packwiz refresh
```

### Updating Mods

```bash
# Update a specific mod
packwiz update <mod-name>

# Update all mods
packwiz update --all

# Check for available updates (dry run)
packwiz update --all --dry-run
```

### Removing Mods

```bash
# Remove a mod
packwiz remove <mod-name>

# Or delete the file and refresh
rm mods/<mod-name>.pw.toml
packwiz refresh
```

### Managing TaCZ Gun Packs

TaCZ gun packs (.zip files) are placed in the `tacz/` folder.

```bash
# Add a new gun pack
cp ~/Downloads/NewGunPack-v1.0.zip tacz/
packwiz refresh

# Update a gun pack
rm tacz/OldGunPack-v1.0.zip
cp ~/Downloads/OldGunPack-v1.1.zip tacz/
packwiz refresh

# Remove a gun pack
rm tacz/<gunpack-name>.zip
packwiz refresh
```

### Changing Config Files

After editing files in `config/`, no `packwiz refresh` is needed.

```bash
# Example: Edit TaCZ Tweaks config
vim config/tacztweaks.json
```

---

## 🚀 Creating a Pull Request

### Step-by-step

```bash
# 1. Create a new branch
git checkout -b add/new-mod

# 2. Make your changes (add/update/remove mods)
packwiz modrinth install <mod-name>

# 3. Commit
git add -A
git commit -m "Add <mod-name>"

# 4. Push the branch
git push -u origin add/new-mod

# 5. Create a PR
gh pr create --title "Add <mod-name>" --body "Added <mod-name> for <reason>"
```

Or create the PR from the GitHub website after pushing.

### PR Title Examples

- `Add Immersive Aircraft`
- `Update TaCZ to v1.2.0`
- `Remove deprecated mod XYZ`
- `Update TaCZ Tweaks config`

---

## 📦 Merge & Release

After merging a PR to `main`:

1. **GitHub Actions** triggers automatically
2. `modpack-prism.zip` is generated
3. Uploaded to **GitHub Releases**
4. **Players get the update on next game launch**

### Self-merge

For small changes, you can merge your own PR:

```bash
gh pr merge --squash
```

Or click **"Merge pull request"** on the GitHub website.

---

## 🔔 Discord Notifications (Optional)

A **Webhook** is a special URL provided by Discord that allows external services (like GitHub) to send messages to a specific channel automatically — no bot required.

By setting this up, your Discord server will receive a notification whenever the modpack is updated. Players will know immediately that a new version is available without manual announcements.

### 1. Create a Discord Webhook

1. In Discord, go to the channel where you want notifications (or create a new one, e.g. `#modpack-updates`)
2. Click the **⚙️ (Edit Channel)** icon next to the channel name
3. Select **"Integrations"** in the left menu
4. Click **"Webhooks"**
5. Click **"New Webhook"**
6. Set a name (e.g. `Modpack Bot`) and optionally change the avatar
7. Click **"Copy Webhook URL"** — you'll get a URL like `https://discord.com/api/webhooks/xxxx/yyyy`
8. Click **"Save Changes"**

> ⚠️ You need **Manage Webhooks** permission or server admin rights to do this.

### 2. Add the Webhook URL to GitHub Secrets

```bash
# Using GitHub CLI
gh secret set DISCORD_WEBHOOK --repo tekitounix/minecraft-modpack
# Paste the webhook URL when prompted
```

Or manually:
1. Go to your GitHub repository → **Settings** → **Secrets and variables** → **Actions**
2. Click **"New repository secret"**
3. Name: `DISCORD_WEBHOOK`
4. Value: paste the webhook URL
5. Click **"Add secret"**

Once configured, Discord will receive a bilingual notification (English / Japanese) every time the modpack is updated.

---

## 📁 Directory Structure

```
modpack/
├── .github/workflows/    # GitHub Actions (auto-release)
├── mods/                 # Mod definition files (.pw.toml, .jar)
├── tacz/                 # TaCZ gun packs (.zip)
├── config/               # Mod config files
├── options.txt           # Key bindings
├── pack.toml             # Packwiz main config
├── index.toml            # Mod index (auto-generated)
├── README.md             # Player guide (English)
├── README.ja.md          # Player guide (Japanese)
├── CONTRIBUTING.md       # This file (English)
└── CONTRIBUTING.ja.md    # This file (Japanese)
```

---

## ❓ Troubleshooting

### `packwiz refresh` errors

```bash
# Clear cache
rm -rf ~/.cache/packwiz

# Retry
packwiz refresh
```

### A specific mod won't update

```bash
# Delete .pw.toml and re-add
rm mods/<mod-name>.pw.toml
packwiz modrinth install <mod-name>
```

### index.toml hash mismatch

```bash
# Regenerate the index
packwiz refresh --force
```

### PR won't merge

- Make sure you're not trying to push directly to `main`
- Check if there are merge conflicts (pull latest `main` and rebase)

```bash
git checkout main
git pull
git checkout your-branch
git rebase main
# Resolve conflicts if any, then force-push
git push --force-with-lease
```

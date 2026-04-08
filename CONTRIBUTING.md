# Contributing to the Modpack

> 🌐 **Language / 言語**: **English** | [日本語](CONTRIBUTING.ja.md)

This guide covers how to add, update, or remove mods from the modpack.

---

## 📋 Quick Reference

| I want to... | Command |
|--------------|---------|
| Add a mod | `packwiz modrinth install <name>` |
| Update a mod | `packwiz update <name>` |
| Update all mods | `packwiz update --all` |
| Remove a mod | `packwiz remove <name>` |

---

## 🔄 How It Works

```
Create branch  →  Make changes  →  Open PR  →  Merge  →  Auto-release to players
```

> ⚠️ **Merging to `main` = instant release to all players.** That's why we use Pull Requests.

<details>
<summary>💡 Branch naming & review rules</summary>

### Branch Naming

| Change Type | Example |
|-------------|---------|
| Add a mod | `add/immersive-aircraft` |
| Update a mod | `update/tacz` |
| Remove a mod | `remove/old-mod` |
| Config change | `config/tacz-tweaks` |
| Multiple changes | `update/weekly-2024-01-15` |

### When to Get a Review

| Size | Example | Rule |
|------|---------|------|
| **Small** | Add/remove 1 mod | Self-merge OK |
| **Medium** | Multiple mods, config changes | Ask 1 person |
| **Large** | Forge version change | Everyone reviews |

</details>

---

## 🛠️ Initial Setup

### 1. Install Go & packwiz

<details>
<summary>macOS</summary>

```bash
brew install go
go install github.com/packwiz/packwiz@latest
echo 'export PATH="$HOME/go/bin:$PATH"' >> ~/.zshrc && source ~/.zshrc
```

</details>

<details>
<summary>Windows</summary>

1. Download and install Go from [go.dev/dl](https://go.dev/dl/)
2. Open **PowerShell** and run:
```powershell
go install github.com/packwiz/packwiz@latest
```
3. Add `%USERPROFILE%\go\bin` to your PATH ([guide](https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/))

</details>

<details>
<summary>Linux</summary>

```bash
# Debian/Ubuntu
sudo apt install golang-go
# Fedora
sudo dnf install golang
# Arch
sudo pacman -S go

go install github.com/packwiz/packwiz@latest
echo 'export PATH="$HOME/go/bin:$PATH"' >> ~/.bashrc && source ~/.bashrc
```

</details>

Verify: `packwiz help`

### 2. Clone the repository

```bash
git clone https://github.com/tekitounix/minecraft-modpack.git
cd minecraft-modpack
```

<details>
<summary>💡 What is packwiz?</summary>

**packwiz** is a command-line tool for managing Minecraft modpacks. It handles downloading mods from Modrinth/CurseForge, tracking versions, and generating the files needed for distribution. You don't need to manually download `.jar` files.

</details>

---

## ✏️ Making Changes

### Add a Mod

```bash
packwiz modrinth install <mod-name>
```

<details>
<summary>💡 Other ways to add mods</summary>

```bash
# From CurseForge
packwiz curseforge install <mod-name>

# Manual jar file (if not on Modrinth/CurseForge)
# Copy the jar into the mods/ folder, then refresh:
packwiz refresh
```

</details>

### Update Mods

```bash
# Update one mod
packwiz update <mod-name>

# Update all mods
packwiz update --all
```

<details>
<summary>💡 Check what's available before updating</summary>

```bash
# Dry run — shows what would be updated without doing it
packwiz update --all --dry-run
```

</details>

### Remove a Mod

```bash
packwiz remove <mod-name>
```

### Manage TaCZ Gun Packs

Gun packs go in the `tacz/` folder. The process differs depending on whether the pack is on CurseForge or manually placed.

#### CurseForge Packs (managed via `.pw.toml`)

```bash
# Add (creates a .pw.toml in tacz/ automatically)
packwiz curseforge install --meta-folder tacz <URL or slug>

# Update (single pack)
packwiz update <pack-name>

# Update (all packs at once)
packwiz update --all

# Remove
packwiz remove <pack-name>
```

#### Manual Packs (`.zip` placed directly)

For packs not available on CurseForge / Modrinth:

1. **Add**: Copy the `.zip` into `tacz/`, then run `packwiz refresh`
2. **Update**: Replace the old `.zip` with the new file, then run `packwiz refresh`
3. **Remove**: Delete the `.zip` from `tacz/`, then run `packwiz refresh`

> 💡 Manual `.zip` files are tracked directly by Git, increasing repository size. Always use the CurseForge method above when the pack is available there.

### Change Config Files

Edit files in `config/` directly. No `packwiz refresh` needed.

---

## 🚀 Create a Pull Request & Merge

```bash
# 1. Create a branch
git checkout -b add/new-mod

# 2. Make changes
packwiz modrinth install <mod-name>

# 3. Commit & push
git add -A
git commit -m "Add <mod-name>"
git push -u origin add/new-mod

# 4. Create a PR
gh pr create --title "Add <mod-name>" --body "Added <mod-name> for <reason>"

# 5. Merge (for small changes, self-merge is OK)
gh pr merge --squash
```

> You can also create and merge PRs from the GitHub website.

<details>
<summary>💡 PR title examples</summary>

- `Add Immersive Aircraft`
- `Update TaCZ to v1.2.0`
- `Remove deprecated mod XYZ`
- `Update TaCZ Tweaks config`

</details>

<details>
<summary>💡 What happens after merge?</summary>

1. **GitHub Actions** triggers automatically
2. `modpack-prism.zip` is built
3. Uploaded to **GitHub Releases**
4. Players get the update on next game launch

</details>

---

## 🔔 Discord Notifications

<details>
<summary>Set up Discord notifications (optional)</summary>

When configured, Discord gets a notification every time the modpack is updated.

### 1. Create a Discord Webhook

1. Go to the channel for notifications (e.g. `#modpack-updates`)
2. Click **⚙️ Edit Channel** → **Integrations** → **Webhooks**
3. Click **New Webhook** → set a name (e.g. `Modpack Bot`)
4. Click **Copy Webhook URL**
5. **Save Changes**

### 2. Add to GitHub Secrets

```bash
gh secret set DISCORD_WEBHOOK --repo tekitounix/minecraft-modpack
# Paste the webhook URL when prompted
```

Or: GitHub repo → **Settings** → **Secrets and variables** → **Actions** → **New repository secret** → Name: `DISCORD_WEBHOOK`, Value: the URL.

</details>

---

## 📁 Directory Structure

<details>
<summary>View directory structure</summary>

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

</details>

---

## ❓ Troubleshooting

<details>
<summary><code>packwiz refresh</code> errors</summary>

Delete the packwiz cache folder and retry:
- **macOS / Linux**: `rm -rf ~/.cache/packwiz`
- **Windows (PowerShell)**: `Remove-Item -Recurse -Force "$env:LOCALAPPDATA\packwiz"`

Then run `packwiz refresh` again.

</details>

<details>
<summary>A mod won't update</summary>

Delete the `.pw.toml` file for that mod and re-add it:
```bash
packwiz modrinth install <mod-name>
```

</details>

<details>
<summary>index.toml hash mismatch</summary>

```bash
packwiz refresh --force
```

</details>

<details>
<summary>PR won't merge / merge conflicts</summary>

```bash
git checkout main
git pull
git checkout your-branch
git rebase main
# Resolve conflicts if any
git push --force-with-lease
```

</details>

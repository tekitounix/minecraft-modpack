# 🎮 Minecraft Modpack (1.20.1 + Forge)

> 🌐 **Language / 言語**: **English** | [日本語](README.ja.md)

[![Minecraft](https://img.shields.io/badge/Minecraft-1.20.1-green)](https://minecraft.net)
[![Forge](https://img.shields.io/badge/Forge-47.4.0-orange)](https://files.minecraftforge.net)

A custom modpack for Minecraft 1.20.1 + Forge 47.4.0.  
Follow the steps below in order — you'll be playing in about 15 minutes.

---

## 📋 Steps to Get Started

| Step | What to Do |
|:----:|------------|
| 1 | [Purchase Minecraft](#1--purchase-minecraft) |
| 2 | [Install Hamachi](#2--install-hamachi) |
| 3 | [Install Prism Launcher](#3--install-prism-launcher) |
| 4 | [Import the Modpack](#4--import-the-modpack) |
| 5 | [Launch & Play](#5--launch--play) |

---

## 1. 🎮 Purchase Minecraft

1. Go to **[minecraft.net](https://www.minecraft.net/en-us/store/minecraft-java-bedrock-edition-pc)**
2. Buy **"MINECRAFT: JAVA & BEDROCK EDITION"**
3. Sign in with your **Microsoft account**

> Already own Minecraft Java Edition? Skip to Step 2.

<details>
<summary>💡 More info about purchasing</summary>

- Java Edition and Bedrock Edition are sold as a bundle
- You need **Java Edition** specifically — that's the one that supports mods
- Only buy from the **official site**. Third-party sellers may be scams
- If you don't have a Microsoft account, create one for free at [account.microsoft.com](https://account.microsoft.com)

</details>

---

## 2. 🌐 Install Hamachi

We use **Hamachi VPN** to connect to the server. Everyone needs it.

1. Download from **[vpn.net](https://vpn.net/)**
2. Install and launch Hamachi
3. Create a LogMeIn account (or sign in if you have one)
4. Click **"Network"** → **"Join an existing network"**
5. Enter the **Network ID** and **Password** (ask the server admin)

> ✅ You'll see the network in your list when connected.

<details>
<summary>💡 Which file do I download?</summary>

| OS | File |
|----|------|
| Windows | `LogMeInHamachi.msi` |
| macOS | `LogMeInHamachi.dmg` |

</details>

<details>
<summary>⚠️ Can't connect to Hamachi?</summary>

1. Check if your firewall is blocking Hamachi
2. Restart Hamachi
3. Double-check the Network ID and Password
4. Try restarting your computer

</details>

---

## 3. 📥 Install Prism Launcher

1. Download from **[prismlauncher.org](https://prismlauncher.org/download/)**
2. Install and launch it
3. Add your Minecraft account:
   - Click **"Accounts"** (top right) → **"Manage Accounts"**
   - Click **"Add Microsoft"**
   - Sign in via the browser that opens

<details>
<summary>💡 Download links by OS</summary>

| OS | Link |
|----|------|
| Windows | [Installer (.exe)](https://prismlauncher.org/download/windows/) |
| macOS | [DMG](https://prismlauncher.org/download/mac/) |
| Linux | [AppImage / Flatpak](https://prismlauncher.org/download/linux/) |

</details>

---

## 4. 📦 Import the Modpack

1. In Prism Launcher, click **"Add Instance"**
2. Select **"Import"** in the left sidebar
3. Paste this URL:

```
https://github.com/tekitounix/minecraft-modpack/releases/latest/download/modpack-prism.zip
```

4. Click **"OK"**

> 📝 Mods aren't downloaded yet at this step. They download automatically when you first launch the game.

<details>
<summary>💡 How to update the modpack later</summary>

When the modpack is updated, just **re-import** using the same URL above. The latest version is always at that link.

Alternatively, just launch the game — it automatically downloads the latest mods!

</details>

---

## 5. 🚀 Launch & Play

1. **Make sure Hamachi is connected** (check Step 2)
2. Double-click the modpack instance in Prism Launcher
3. Wait for mods to download (first launch only — may take a minute)
4. From the title screen: **"Multiplayer"** → **"Direct Connection"**
5. Enter the server address (ask the server admin for the Hamachi IP)
6. Click **"Join Server"**

> 💡 The server admin's Hamachi IP is shown next to their name in the Hamachi network list.

<details>
<summary>⚠️ Can't connect to the server?</summary>

1. **Most common cause**: Hamachi is not connected. Open Hamachi and check
2. Ask the server admin for the latest IP address
3. Make sure your modpack is up to date (re-import if needed)

</details>

<details>
<summary>⚠️ Game is laggy or crashes?</summary>

1. Check memory settings: Prism Launcher → Settings → Java → Max memory should be **at least 6144 MB**
2. Close other apps to free up RAM
3. If your PC has 16GB+ RAM, try setting max memory to `8192` MB

</details>

---

## ⚙️ Memory Settings

Memory is **pre-configured** — you don't need to change anything.

| Setting | Value |
|---------|-------|
| Minimum | 2048 MB (2 GB) |
| Maximum | 6144 MB (6 GB) |

<details>
<summary>💡 Want to adjust memory?</summary>

Go to Prism Launcher → **Settings** → **Java**:
- **16GB+ RAM PC**: Set Maximum to `8192` MB for better performance
- **8GB RAM PC**: Leave at `6144` MB (default)
- **Less than 8GB RAM**: You may experience lag. Close other apps

</details>

---

## 🔄 How Updates Work

```
Admin pushes update  →  GitHub builds it  →  Discord notification
                                                     ↓
You launch the game  →  Mods update automatically  →  Play!
```

**You don't need to do anything** — just launch the game as usual.

<details>
<summary>💡 How does this work?</summary>

1. When an admin pushes changes to GitHub, a **GitHub Action** automatically builds a new `modpack-prism.zip`
2. If Discord notifications are set up, you'll get a ping in your server
3. When you launch the game, Prism Launcher checks for mod updates and downloads them
4. You're always on the latest version

</details>

---

## 🎮 Key Bindings

Some keys have been customized:

| Action | Key |
|--------|-----|
| Sneak | **C** |
| Sprint | **Left Shift** |
| Inventory | **Tab** |
| Player List | **\\** (Backslash) |
| Dismount Aircraft | **E** |
| TaCZ Action | **Middle Mouse** |
| TaCZ Crawl | **X** |

<details>
<summary>💡 What changed from default?</summary>

| Action | Default | Changed To |
|--------|---------|------------|
| Sneak | Shift | **C** |
| Sprint | Ctrl | **Left Shift** |
| Inventory | E | **Tab** |
| Player List | Tab | **\\** |
| Dismount Aircraft (Immersive Aircraft) | R | **E** |
| TaCZ Action | O | **Middle Mouse** |
| TaCZ Crawl | C | **X** |

</details>

---

## 🖥️ Server Info

| Item | Value |
|------|-------|
| **Server IP** | Ask the server admin (Hamachi IP) |
| **Port** | `25565` (default) |
| **Network** | Hamachi VPN required |
| **Version** | Minecraft 1.20.1 + Forge 47.4.0 |

---

## 📋 Included Mods

<details>
<summary>🔫 Firearms & Combat (4 mods)</summary>

| Mod | Description |
|-----|-------------|
| TaCZ (Timeless and Classics Zero) | Realistic firearms |
| TaCZ Tweaks | TaCZ adjustments & extensions |
| Superb Warfare | Additional weapons |
| WWII Machine Guns | World War II machine guns |

</details>

<details>
<summary>🚗 Vehicles (3 mods)</summary>

| Mod | Description |
|-----|-------------|
| Immersive Aircraft | Planes & gliders |
| ASH Vehicles | Vehicles |
| MCSP Military Vehicle | Military vehicles |

</details>

<details>
<summary>🛋️ Furniture & Building (4 mods)</summary>

| Mod | Description |
|-----|-------------|
| Paladin's Furniture | Furniture set |
| Refurbished Furniture | Modern furniture |
| Macaw's Series | Bridges, doors, fences, roofs, windows, lighting, etc. |
| ManyIdeas Doors | Door variations |

</details>

<details>
<summary>⚡ Performance & Other (3 mods)</summary>

| Mod | Description |
|-----|-------------|
| Embeddium | Rendering optimization (Sodium for Forge) |
| Farmer's Delight | Cooking expansion |
| JEI | Recipe browser |

</details>

<details>
<summary>🔫 TaCZ Expansion Packs (auto-installed)</summary>

These gun packs are installed automatically on first launch:

| Pack | Description |
|------|-------------|
| A3SQF | Additional firearms |
| AsHi | Additional firearms |
| BOpack | BO series firearms |
| CoD_BO_TACZ | Call of Duty Black Ops firearms |
| FNP90TR | FN P90 firearm |
| Gucci | Gucci Vuitton attachments |
| LesRaisins | LesRaisins tactical equipment |
| NVGs | Night vision equipment |
| T_Attachments | Additional attachments |
| Tarkov | Escape from Tarkov firearms |
| TGWF | Additional firearms |
| WW2Pack | World War II firearms |

</details>

---

## ❓ More Troubleshooting

<details>
<summary>"Java not found" error</summary>

Go to Prism Launcher → **Settings** → **Java** → Click **"Auto-detect"**

</details>

<details>
<summary>Mod download fails</summary>

1. Check your internet connection
2. Restart Prism Launcher and try again
3. Check if Prism Launcher is blocked by your firewall

</details>

---

## 🛠️ Contributing

Want to add, update, or remove mods? See the **[Contributing Guide](CONTRIBUTING.md)**.

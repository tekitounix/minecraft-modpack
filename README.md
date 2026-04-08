# 🎮 Minecraft Modpack (1.20.1 + Forge)

> 🌐 **Language / 言語**: **English** | [日本語](README.ja.md)

[![Minecraft](https://img.shields.io/badge/Minecraft-1.20.1-green)](https://minecraft.net)
[![Forge](https://img.shields.io/badge/Forge-47.4.0-orange)](https://files.minecraftforge.net)

A custom modpack for Minecraft 1.20.1 + Forge 47.4.0.

---

## 📋 Table of Contents

1. [Purchase Minecraft Java Edition](#-purchase-minecraft-java-edition)
2. [Install Hamachi (Required)](#-install-hamachi-required)
3. [Install Prism Launcher](#-install-prism-launcher)
4. [Import the Modpack](#-import-the-modpack)
5. [Memory Settings (Auto-configured)](#%EF%B8%8F-memory-settings-auto-configured)
6. [Launch & Connect to Server](#-launch--connect-to-server)

---

## 🎮 Purchase Minecraft Java Edition

You need **Minecraft Java Edition** to use this modpack.

### How to Purchase

1. Visit the **[Minecraft Official Site](https://www.minecraft.net/en-us/store/minecraft-java-bedrock-edition-pc)**
2. Purchase **"MINECRAFT: JAVA & BEDROCK EDITION"**
3. Sign in with your **Microsoft account** (create one if you don't have one)
4. After purchase, Minecraft will be linked to your account

> 💡 **Tip**: Java Edition and Bedrock Edition are bundled together. You need **Java Edition** for mods.

> ⚠️ **Warning**: Only purchase from the official site. Third-party sellers may be scams.

---

## 🌐 Install Hamachi (Required)

This server uses **Hamachi VPN**. You must install it to connect to the server.

### Download

👉 Download from **[https://vpn.net/](https://vpn.net/)**

| OS | Instructions |
|----|-------------|
| **Windows** | Download `LogMeInHamachi.msi` → Run the installer |
| **macOS** | Download `LogMeInHamachi.dmg` → Install the app |

### Create Account & Log In

1. Launch Hamachi
2. If it's your first time, click **"Sign up"** to create a LogMeIn account
3. Register with your email and password
4. Log in with your new account

### Join the Network

1. In Hamachi, click **"Network"** → **"Join an existing network"**
2. Enter the information provided by the server admin:
   - **Network ID**: (ask the admin)
   - **Password**: (ask the admin)
3. Click **"Join"**
4. If the network appears in your list, you're connected!

> ⚠️ **Important**: Make sure Hamachi is connected before launching Minecraft

---

## 📥 Install Prism Launcher

Download and install **[Prism Launcher](https://prismlauncher.org/download/)**

| OS | Download |
|----|----------|
| Windows | [Installer (.exe)](https://prismlauncher.org/download/windows/) |
| macOS | [DMG](https://prismlauncher.org/download/mac/) |
| Linux | [AppImage / Flatpak](https://prismlauncher.org/download/linux/) |

### Initial Setup

1. Launch Prism Launcher
2. Set the language to **English** (or your preferred language)
3. **Add your Minecraft account**:
   - Click **"Accounts"** (top right) → **"Manage Accounts"**
   - Click **"Add Microsoft"**
   - Log in via the browser

---

## 📦 Import the Modpack

1. In Prism Launcher, click **"Add Instance"**
2. Select **"Import"** in the left sidebar
3. Paste the following URL into **"Local file or link to a direct download"**:

```
https://github.com/tekitounix/minecraft-modpack/releases/latest/download/modpack-prism.zip
```

4. Click **"OK"** and you're done!

> 📝 **Note**: Mods are not downloaded at this point. The actual download happens automatically when you launch the game for the first time.

---

## ⚙️ Memory Settings (Auto-configured)

This modpack comes with **pre-configured memory settings**:

| Setting | Value |
|---------|-------|
| Minimum Memory | 2048 MB (2GB) |
| Maximum Memory | 6144 MB (6GB) |

> 💡 **Tip**: If your PC has 16GB+ RAM, you can increase the max memory to `8192` MB in Settings → Java for smoother performance

> ⚠️ **Low RAM**: If your PC has less than 8GB RAM, you may experience lag

---

## 🚀 Launch & Connect to Server

### Launch

1. Double-click the instance in Prism Launcher
2. On first launch, all mods will be downloaded automatically (this may take a moment)

### Connect to Server

1. From the Minecraft title screen, click **"Multiplayer"**
2. Click **"Direct Connection"** or **"Add Server"**
3. Server address: **Ask the server admin** (Hamachi IP address)
4. Click **"Join Server"**

> ⚠️ You cannot connect to the server without being connected to Hamachi

> 💡 **Tip**: The server admin's Hamachi IP is shown next to their name in the Hamachi network list

---

## 🔄 How Auto-Updates Work

```
┌─────────────────┐     ┌──────────────┐     ┌─────────────────┐
│  Admin pushes   │────▶│   GitHub     │────▶│ Discord notifies│
│  an update      │     │  (auto-build)│     │ "Update ready!" │
└─────────────────┘     └──────────────┘     └─────────────────┘
                                                      │
                                                      ▼
┌─────────────────┐     ┌──────────────┐     ┌─────────────────┐
│  Player launches│────▶│  Mods auto-  │────▶│  Play with the  │
│  the game       │     │  download    │     │  latest mods!   │
└─────────────────┘     └──────────────┘     └─────────────────┘
```

**All you need to do:** Just launch the game!

---

## 🖥️ Server Info

| Item | Value |
|------|-------|
| **Server IP** | Ask the server admin (Hamachi IP) |
| **Port** | `25565` (default) |
| **Network** | Hamachi VPN required |
| **Version** | Minecraft 1.20.1 + Forge 47.4.0 |

---

## 🎮 Key Bindings

Some key bindings have been changed in this modpack:

| Action | Default | Changed To |
|--------|---------|------------|
| Sneak | Shift | **C** |
| Sprint | Ctrl | **Left Shift** |
| Inventory | E | **Tab** |
| Player List | Tab | **\\** (Backslash) |
| Dismount Aircraft (Immersive Aircraft) | R | **E** |
| TaCZ Action | O | **Middle Mouse Button** |
| TaCZ Crawl | C | **X** |

---

## 📋 Included Mods

### 🔫 Firearms & Combat
| Mod | Description |
|-----|-------------|
| TaCZ (Timeless and Classics Zero) | Realistic firearms |
| TaCZ Tweaks | TaCZ adjustments & extensions |
| Superb Warfare | Additional weapons |
| WWII Machine Guns | World War II machine guns |

### 🚗 Vehicles
| Mod | Description |
|-----|-------------|
| Immersive Aircraft | Planes & gliders |
| ASH Vehicles | Vehicles |
| MCSP Military Vehicle | Military vehicles |

### 🛋️ Furniture & Building
| Mod | Description |
|-----|-------------|
| Paladin's Furniture | Furniture set |
| Refurbished Furniture | Modern furniture |
| Macaw's Series | Bridges, doors, fences, roofs, windows, lighting, etc. |
| ManyIdeas Doors | Door variations |

### ⚡ Performance
| Mod | Description |
|-----|-------------|
| Embeddium | Rendering optimization (Sodium for Forge) |

### 🍳 Other
| Mod | Description |
|-----|-------------|
| Farmer's Delight | Cooking expansion |
| JEI | Recipe browser |

---

## ⚠️ TaCZ Expansion Packs (Auto-distributed)

TaCZ gun packs are **distributed automatically**!  
The following packs are auto-installed on first launch:

| Pack Name | Description |
|-----------|-------------|
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

---

## ❓ Troubleshooting

### Can't connect to Hamachi
1. Check if Hamachi is blocked by your firewall
2. Try restarting Hamachi
3. Verify the Network ID and password are correct

### "Java not found" error
Go to Prism Launcher Settings → Java → Click "Auto-detect"

### Mod download fails
1. Check your internet connection
2. Restart Prism Launcher and try again
3. Check if Prism Launcher is blocked by your firewall

### Can't connect to server
1. **Make sure you're connected to Hamachi** (most common issue)
2. Get the latest IP address from the server admin
3. Ensure your mod versions match the server (re-import the latest modpack)

### Game is laggy or crashes
1. Check memory settings (at least 6144 MB max recommended)
2. Close other apps to free up memory

---

## 🛠️ Contributing

Want to add, update, or remove mods? See the **[Contributing Guide](CONTRIBUTING.md)** for the full workflow.


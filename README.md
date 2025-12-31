# 🎮 Minecraft Modpack (1.20.1 + Forge)

[![Minecraft](https://img.shields.io/badge/Minecraft-1.20.1-green)](https://minecraft.net)
[![Forge](https://img.shields.io/badge/Forge-47.4.0-orange)](https://files.minecraftforge.net)

Minecraft 1.20.1 + Forge 47.4.0 用のカスタムモッドパックです。

---

## 🚀 クイックスタート（2分で完了）

### Step 1: Prism Launcher をインストール

**[Prism Launcher](https://prismlauncher.org/download/)** をダウンロードしてインストール

| OS | ダウンロード |
|----|-------------|
| Windows | [インストーラー (.exe)](https://prismlauncher.org/download/windows/) |
| macOS | [DMG](https://prismlauncher.org/download/mac/) |
| Linux | [AppImage / Flatpak](https://prismlauncher.org/download/linux/) |

### Step 2: Modpack をインポート

1. Prism Launcher で **「起動構成を追加」** をクリック
2. 左サイドバーで **「zipからインポート」** を選択
3. 以下の URL を入力:

```
https://github.com/tekitounix/minecraft-modpack/releases/latest/download/modpack-prism.zip
```

4. **「OK」** で完了

### Step 3: 起動！

起動構成をダブルクリックして起動するだけ！

初回起動時に全ての Mod が自動ダウンロードされます ✨

---

## 🔄 自動更新の仕組み

```
┌─────────────────┐     ┌──────────────┐     ┌─────────────────┐
│  管理者が更新   │────▶│   GitHub     │────▶│  Discord 通知   │
│  (git push)     │     │   (自動処理) │     │  「更新あり！」 │
└─────────────────┘     └──────────────┘     └─────────────────┘
                                                      │
                                                      ▼
┌─────────────────┐     ┌──────────────┐     ┌─────────────────┐
│  プレイヤーが   │────▶│  Mod 自動    │────▶│  最新 Mod で    │
│  ゲーム起動     │     │  ダウンロード │     │  プレイ開始！   │
└─────────────────┘     └──────────────┘     └─────────────────┘
```

**プレイヤーがやること:** ゲームを起動するだけ！

---

## 🖥️ サーバー情報

| 項目 | 値 |
|------|-----|
| **サーバー IP** | `25.51.29.103:25565` |
| **ネットワーク** | Hamachi 参加必須 |
| **バージョン** | Minecraft 1.20.1 + Forge 47.4.0 |

---

## 📋 収録 Mod 一覧

### 🔫 銃火器・戦闘
| Mod | 説明 |
|-----|------|
| TaCZ (Timeless and Classics Zero) | リアルな銃火器 |
| TaCZ Tweaks | TaCZ の調整・拡張 |
| Superb Warfare | 追加武器 |
| WWII Machine Guns | 第二次世界大戦の機関銃 |

### 🚗 乗り物
| Mod | 説明 |
|-----|------|
| Immersive Aircraft | 飛行機・グライダー |
| ASH Vehicles | 車両 |
| MCSP Military Vehicle | 軍用車両 |

### 🛋️ 家具・建築
| Mod | 説明 |
|-----|------|
| Paladin's Furniture | 家具セット |
| Refurbished Furniture | モダン家具 |
| Macaw's シリーズ | 橋、ドア、フェンス、屋根、窓、照明など |
| ManyIdeas Doors | ドアバリエーション |

### 🍳 その他
| Mod | 説明 |
|-----|------|
| Farmer's Delight | 料理拡張 |
| Embeddium | パフォーマンス改善 |
| Oculus | シェーダー対応 |
| JEI | レシピ検索 |

---

## ⚠️ TaCZ 拡張パック（初回のみ手動）

TaCZ の銃パックは自動配布に対応していません。  
**初回のみ** 以下の手順で手動インストールしてください。

1. サーバー管理者から銃パックを受け取る
2. Prism Launcher でインスタンスを右クリック → **「フォルダ」** → **「Minecraft フォルダ」**
3. `tacz` フォルダを開く（なければ作成）
4. 銃パック（`.zip` ファイル）を配置

---

## ❓ トラブルシューティング

### 「Java が見つかりません」エラー
Prism Launcher の設定 → Java → 「自動検出」をクリック

### Mod のダウンロードに失敗する
1. インターネット接続を確認
2. `packwiz-installer-bootstrap.jar` が正しい場所にあるか確認
3. Pre-launch command が正しくコピーされているか確認

### サーバーに接続できない
1. Hamachi に参加しているか確認
2. Mod バージョンがサーバーと一致しているか確認

---

## 🛠️ 管理者向け情報

### Mod の追加・更新

```bash
cd /path/to/modpack

# Modrinth から追加
./bin/packwiz modrinth install <mod-name>

# CurseForge から追加  
./bin/packwiz curseforge install <mod-name>

# 全 Mod を更新
./bin/packwiz update --all

# インデックス再生成
./bin/packwiz refresh

# 変更をプッシュ（自動で Discord 通知）
git add -A && git commit -m "Update mods" && git push
```

### ディレクトリ構成

```
modpack/
├── .github/workflows/    # GitHub Actions
├── mods/                 # Mod 定義ファイル (.pw.toml)
├── pack.toml             # Packwiz メイン設定
├── index.toml            # Mod インデックス（自動生成）
└── README.md
```

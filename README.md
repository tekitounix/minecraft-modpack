# 🎮 Minecraft Modpack (1.20.1 + Forge)

[![Minecraft](https://img.shields.io/badge/Minecraft-1.20.1-green)](https://minecraft.net)
[![Forge](https://img.shields.io/badge/Forge-47.4.0-orange)](https://files.minecraftforge.net)

Minecraft 1.20.1 + Forge 47.4.0 用のカスタムモッドパックです。

---

## � 目次

1. [Hamachi のインストール](#-hamachi-のインストール必須)
2. [Prism Launcher のインストール](#-prism-launcher-のインストール)
3. [Modpack のインポート](#-modpack-のインポート)
4. [メモリ設定（重要！）](#%EF%B8%8F-メモリ設定重要)
5. [起動とサーバー接続](#-起動とサーバー接続)

---

## 🌐 Hamachi のインストール（必須）

このサーバーは **Hamachi VPN** を使用しています。サーバーに接続するには必ずインストールが必要です。

### ダウンロード

👉 **[https://vpn.net/](https://vpn.net/)** からダウンロード

| OS | 手順 |
|----|------|
| **Windows** | `LogMeInHamachi.msi` をダウンロード → インストーラーを実行 |
| **macOS** | `LogMeInHamachi.dmg` をダウンロード → アプリをインストール |

### アカウント作成とログイン

1. Hamachi を起動
2. 初回の場合は **「サインアップ」** をクリックして LogMeIn アカウントを作成
3. メールアドレスとパスワードを登録
4. 作成したアカウントでログイン

### ネットワークに参加

1. Hamachi のメイン画面で **「ネットワーク」** → **「既存のネットワークに参加」** をクリック
2. サーバー管理者から教えてもらった以下の情報を入力：
   - **ネットワーク ID**: （管理者に確認）
   - **パスワード**: （管理者に確認）
3. **「参加」** をクリック
4. ネットワーク一覧に参加したネットワークが表示されれば成功！

> ⚠️ **重要**: Hamachi は Minecraft を起動する前に接続しておいてください

---

## 📥 Prism Launcher のインストール

**[Prism Launcher](https://prismlauncher.org/download/)** をダウンロードしてインストール

| OS | ダウンロード |
|----|-------------|
| Windows | [インストーラー (.exe)](https://prismlauncher.org/download/windows/) |
| macOS | [DMG](https://prismlauncher.org/download/mac/) |
| Linux | [AppImage / Flatpak](https://prismlauncher.org/download/linux/) |

### 初回設定

1. Prism Launcher を起動
2. 言語を **「日本語」** に設定
3. **Minecraft アカウントを追加**：
   - 右上の **「アカウント」** → **「アカウントを管理」**
   - **「Microsoft アカウントを追加」** をクリック
   - ブラウザでログイン

---

## 📦 Modpack のインポート

1. Prism Launcher で **「起動構成を追加」** をクリック
2. 左サイドバーで **「zipからインポート」** を選択
3. 以下の URL を入力:

```
https://github.com/tekitounix/minecraft-modpack/releases/latest/download/modpack-prism.zip
```

4. **「OK」** で完了！

---

## ⚙️ メモリ設定（重要！）

Mod が多いため、**6GB 以上のメモリを割り当てる**ことを強く推奨します。

### 設定手順

1. インポートした起動構成を**右クリック** → **「編集」**
2. 左サイドバーで **「設定」** を選択
3. **「Java」** タブを開く
4. **「メモリ」** セクションで以下を設定：

| 項目 | 値 | 説明 |
|------|-----|------|
| **最小メモリ割り当て** | `2048` MB | 起動時の初期メモリ |
| **最大メモリ割り当て** | `6144` MB | **6GB** - 推奨値 |

5. **「閉じる」** で保存

> 💡 **ヒント**: PC のメモリが 8GB 以上ある場合、最大メモリを `8192` MB (8GB) にするとより快適にプレイできます

> ⚠️ **注意**: PC の搭載メモリの 50-70% 程度を割り当てるのが目安です

---

## 🚀 起動とサーバー接続

### 起動

1. Prism Launcher で起動構成をダブルクリック
2. 初回起動時は全ての Mod が自動ダウンロードされます（少し時間がかかります）

### サーバー接続

1. Minecraft のタイトル画面で **「マルチプレイ」**
2. **「ダイレクト接続」** または **「サーバーを追加」**
3. サーバーアドレス: `25.51.29.103`
4. **「サーバーに接続」**

> ⚠️ Hamachi に接続していないとサーバーに接続できません

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
| **サーバー IP** | `25.51.29.103` |
| **ポート** | `25565`（デフォルト） |
| **ネットワーク** | Hamachi VPN 必須 |
| **バージョン** | Minecraft 1.20.1 + Forge 47.4.0 |

---

## 🎮 操作キー設定

このモッドパックでは一部のキー設定が変更されています：

| 操作 | デフォルト | 変更後 |
|------|-----------|--------|
| スニーク（しゃがむ） | Shift | **C** |
| スプリント（走る） | Ctrl | **左Shift** |
| インベントリ | E | **Tab** |
| プレイヤーリスト | Tab | **\\** (バックスラッシュ) |
| 航空機から降りる (Immersive Aircraft) | R | **E** |
| TaCZ 操作 | O | **マウス中ボタン** |
| TaCZ クロール | C | **X** |

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

## ⚠️ TaCZ 拡張パック（自動配布）

TaCZ の銃パックは **自動で配布** されます！  
初回起動時に以下のパックが自動インストールされます：

| パック名 | 説明 |
|----------|------|
| A3SQF | 追加銃器 |
| AsHi | 追加銃器 |
| BOpack | BO シリーズ銃器 |
| CoD_BO_TACZ | Call of Duty Black Ops 銃器 |
| FNP90TR | FN P90 銃器 |
| Gucci | Gucci Vuitton アタッチメント |
| LesRaisins | LesRaisins 戦術装備 |
| NVGs | ナイトビジョン装備 |
| T_Attachments | 追加アタッチメント |
| Tarkov | Escape from Tarkov 銃器 |
| TGWF | 追加銃器 |
| WW2Pack | 第二次世界大戦銃器 |

---

## ❓ トラブルシューティング

### Hamachi に接続できない
1. ファイアウォールで Hamachi がブロックされていないか確認
2. Hamachi を再起動してみる
3. ネットワーク ID とパスワードが正しいか確認

### 「Java が見つかりません」エラー
Prism Launcher の設定 → Java → 「自動検出」をクリック

### Mod のダウンロードに失敗する
1. インターネット接続を確認
2. Prism Launcher を再起動してもう一度試す
3. ファイアウォールで Prism Launcher がブロックされていないか確認

### サーバーに接続できない
1. **Hamachi に接続しているか確認**（最も多い原因）
2. サーバーアドレス `25.51.29.103` が正しいか確認
3. Mod バージョンがサーバーと一致しているか確認（最新版をインポートし直す）

### ゲームが重い・クラッシュする
1. メモリ設定を確認（最大 6144 MB 以上推奨）
2. シェーダーを無効にしてみる（Oculus 設定）
3. PC の他のアプリを終了してメモリを確保

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

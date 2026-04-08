# Modpack への貢献ガイド

> 🌐 **Language / 言語**: [English](CONTRIBUTING.md) | **日本語**

このガイドでは、Modpack への貢献方法（Mod の追加・更新・削除）と、変更がプレイヤーにリリースされるまでの流れを説明します。

---

## 📋 目次

1. [ワークフロー概要](#-ワークフロー概要)
2. [初期セットアップ](#%EF%B8%8F-初期セットアップ)
3. [変更を行う](#%EF%B8%8F-変更を行う)
4. [プルリクエストの作成](#-プルリクエストの作成)
5. [マージとリリース](#-マージとリリース)
6. [Discord 通知](#-discord-通知任意)
7. [ディレクトリ構成](#-ディレクトリ構成)
8. [トラブルシューティング](#-トラブルシューティング)

---

## 🔄 ワークフロー概要

**`main` へのマージ = 全プレイヤーへ即リリース** となるため、事故防止のためプルリクエスト（PR）を使ったワークフローを採用しています。

```
1. ブランチ作成  →  2. 変更  →  3. PR作成  →  4. 確認/マージ  →  5. 自動リリース
```

### ブランチ命名規則

| 変更内容 | ブランチ名の例 |
|---------|-------------|
| Mod 追加 | `add/immersive-aircraft` |
| Mod 更新 | `update/tacz` |
| Mod 削除 | `remove/old-mod` |
| 設定変更 | `config/tacz-tweaks` |
| 複数変更 | `update/weekly-2024-01-15` |

### レビューの基準

| 変更の大きさ | 例 | ルール |
|------------|---|--------|
| **小** | Mod 1個の追加/削除 | セルフマージOK |
| **中** | 複数 Mod、config 変更 | 1人に確認依頼 |
| **大** | Forge バージョン変更、大規模再構成 | 全員で確認 |

---

## 🛠️ 初期セットアップ

### 必要なもの

- Git
- Go（packwiz のため）
- GitHub CLI（`gh`）— あると便利

### packwiz のインストール

**packwiz** は Modpack の Mod 管理に使うツールです。

```bash
# Go をインストール（未インストールの場合）
brew install go          # macOS
# または: sudo apt install golang-go   # Linux

# packwiz をインストール
go install github.com/packwiz/packwiz@latest

# PATH に追加（~/.zshrc または ~/.bashrc に追記）
echo 'export PATH="$HOME/go/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# 確認
packwiz help
```

### リポジトリのクローン

```bash
git clone https://github.com/tekitounix/minecraft-modpack.git
cd minecraft-modpack
```

---

## ✏️ 変更を行う

### Mod の追加

#### Modrinth / CurseForge から追加（推奨）

```bash
# Modrinth から検索して追加
packwiz modrinth install <mod-name>

# CurseForge から追加
packwiz curseforge install <mod-name>

# 例: JEI を追加
packwiz modrinth install jei
```

#### 直接 jar ファイルを追加（Modrinth/CurseForge にない場合）

```bash
# jar ファイルを mods/ に配置
cp ~/Downloads/some-mod-1.0.0.jar mods/

# インデックスを更新（.pw.toml は生成されない、jar がそのまま配布される）
packwiz refresh
```

### Mod の更新

```bash
# 特定の Mod を更新
packwiz update <mod-name>

# 全 Mod を一括更新
packwiz update --all

# 更新可能な Mod を確認（更新はしない）
packwiz update --all --dry-run
```

### Mod の削除

```bash
# Mod を削除
packwiz remove <mod-name>

# または直接ファイルを削除して refresh
rm mods/<mod-name>.pw.toml
packwiz refresh
```

### TaCZ 銃パックの管理

TaCZ の銃パック（.zip ファイル）は `tacz/` フォルダに配置します。

```bash
# 新しい銃パックを追加
cp ~/Downloads/NewGunPack-v1.0.zip tacz/
packwiz refresh

# 銃パックを更新
rm tacz/OldGunPack-v1.0.zip
cp ~/Downloads/OldGunPack-v1.1.zip tacz/
packwiz refresh

# 銃パックを削除
rm tacz/<gunpack-name>.zip
packwiz refresh
```

### 設定ファイルの変更

`config/` 内のファイルを編集後、`packwiz refresh` は不要です。

```bash
# 例: TaCZ Tweaks の設定を変更
vim config/tacztweaks.json
```

---

## 🚀 プルリクエストの作成

### 手順

```bash
# 1. 新しいブランチを作成
git checkout -b add/new-mod

# 2. 変更を行う（Mod の追加/更新/削除）
packwiz modrinth install <mod-name>

# 3. コミット
git add -A
git commit -m "Add <mod-name>"

# 4. ブランチをプッシュ
git push -u origin add/new-mod

# 5. PR を作成
gh pr create --title "Add <mod-name>" --body "Added <mod-name> for <reason>"
```

GitHub のウェブサイトからプッシュ後に PR を作成することもできます。

### PR タイトルの例

- `Add Immersive Aircraft`
- `Update TaCZ to v1.2.0`
- `Remove deprecated mod XYZ`
- `Update TaCZ Tweaks config`

---

## 📦 マージとリリース

PR を `main` にマージすると：

1. **GitHub Actions** が自動で起動
2. `modpack-prism.zip` が生成される
3. **GitHub Releases** にアップロード
4. **プレイヤーは次回のゲーム起動時に自動更新**

### セルフマージ

小さな変更は自分でマージしてOKです：

```bash
gh pr merge --squash
```

または GitHub のウェブサイトで **「Merge pull request」** をクリック。

---

## 🔔 Discord 通知（任意）

**Webhook（ウェブフック）** とは、Discord が提供する特別な URL で、外部サービス（GitHub など）から特定のチャンネルへ自動的にメッセージを送ることができる仕組みです。Bot の導入は不要です。

これを設定すると、Modpack が更新されるたびに Discord に通知が届きます。手動でアナウンスする必要がなくなります！

### 1. Discord Webhook の作成

1. Discord で通知を送りたいチャンネルを開く（新しく `#modpack-updates` などを作ってもOK）
2. チャンネル名の横にある **⚙️（チャンネルの編集）** をクリック
3. 左メニューから **「連携サービス」** を選択
4. **「ウェブフック」** をクリック
5. **「新しいウェブフック」** をクリック
6. 名前を設定（例: `Modpack Bot`）、アイコンも変更可能
7. **「ウェブフックURLをコピー」** をクリック — `https://discord.com/api/webhooks/xxxx/yyyy` のような URL が取得されます
8. **「変更を保存」** をクリック

> ⚠️ この操作にはサーバーの**管理者権限**または**ウェブフックの管理**権限が必要です。

### 2. GitHub Secrets に Webhook URL を登録

```bash
# GitHub CLI を使う場合
gh secret set DISCORD_WEBHOOK --repo tekitounix/minecraft-modpack
# プロンプトが表示されたら Webhook URL を貼り付け
```

手動で設定する場合：
1. GitHub リポジトリ → **Settings** → **Secrets and variables** → **Actions**
2. **「New repository secret」** をクリック
3. Name: `DISCORD_WEBHOOK`
4. Value: Webhook URL を貼り付け
5. **「Add secret」** をクリック

設定すると、Modpack が更新されるたびに Discord に通知（英語・日本語併記）が届きます。

---

## 📁 ディレクトリ構成

```
modpack/
├── .github/workflows/    # GitHub Actions（自動リリース）
├── mods/                 # Mod 定義ファイル (.pw.toml, .jar)
├── tacz/                 # TaCZ 銃パック (.zip)
├── config/               # Mod 設定ファイル
├── options.txt           # キー設定
├── pack.toml             # Packwiz メイン設定
├── index.toml            # Mod インデックス（自動生成）
├── README.md             # プレイヤー向けガイド（英語）
├── README.ja.md          # プレイヤー向けガイド（日本語）
├── CONTRIBUTING.md       # このファイル（英語）
└── CONTRIBUTING.ja.md    # このファイル（日本語）
```

---

## ❓ トラブルシューティング

### `packwiz refresh` でエラーが出る

```bash
# キャッシュをクリア
rm -rf ~/.cache/packwiz

# 再実行
packwiz refresh
```

### 特定の Mod が更新されない

```bash
# .pw.toml を削除して再追加
rm mods/<mod-name>.pw.toml
packwiz modrinth install <mod-name>
```

### index.toml のハッシュが合わない

```bash
# インデックスを再生成
packwiz refresh --force
```

### PR がマージできない

- `main` に直接プッシュしていないか確認
- マージコンフリクトがある場合は最新の `main` を取り込んでリベース

```bash
git checkout main
git pull
git checkout your-branch
git rebase main
# コンフリクトがあれば解決してからプッシュ
git push --force-with-lease
```

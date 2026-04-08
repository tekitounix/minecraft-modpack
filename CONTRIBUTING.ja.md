# Modpack への貢献ガイド

> 🌐 **Language / 言語**: [English](CONTRIBUTING.md) | **日本語**

Mod の追加・更新・削除の方法をまとめたガイドです。

---

## 📋 早見表

| やりたいこと | コマンド |
|------------|---------|
| Mod を追加 | `packwiz modrinth install <名前>` |
| Mod を更新 | `packwiz update <名前>` |
| 全 Mod を更新 | `packwiz update --all` |
| Mod を削除 | `packwiz remove <名前>` |

---

## 🔄 全体の流れ

```
ブランチ作成  →  変更  →  PR 作成  →  マージ  →  プレイヤーに自動リリース
```

> ⚠️ **`main` にマージ = 全プレイヤーに即リリース。** だから PR を使います。

<details>
<summary>💡 ブランチ命名規則とレビュー基準</summary>

### ブランチ命名規則

| 変更内容 | 例 |
|---------|---|
| Mod 追加 | `add/immersive-aircraft` |
| Mod 更新 | `update/tacz` |
| Mod 削除 | `remove/old-mod` |
| 設定変更 | `config/tacz-tweaks` |
| 複数変更 | `update/weekly-2024-01-15` |

### レビューの基準

| 大きさ | 例 | ルール |
|-------|---|--------|
| **小** | Mod 1個の追加/削除 | セルフマージ OK |
| **中** | 複数 Mod、config 変更 | 1人に確認依頼 |
| **大** | Forge バージョン変更 | 全員で確認 |

</details>

---

## 🛠️ 初期セットアップ

### 1. Go & packwiz をインストール

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

1. [go.dev/dl](https://go.dev/dl/) から Go をダウンロード・インストール
2. **PowerShell** を開いて実行：
```powershell
go install github.com/packwiz/packwiz@latest
```
3. `%USERPROFILE%\go\bin` を PATH に追加（[手順](https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/)）

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

確認: `packwiz help`

### 2. リポジトリをクローン

```bash
git clone https://github.com/tekitounix/minecraft-modpack.git
cd minecraft-modpack
```

<details>
<summary>💡 packwiz とは？</summary>

**packwiz** は Minecraft のモッドパックを管理するコマンドラインツールです。Modrinth や CurseForge から Mod をダウンロード・バージョン管理し、配布に必要なファイルを自動生成します。手動で `.jar` ファイルをダウンロードする必要はありません。

</details>

---

## ✏️ 変更を行う

### Mod を追加

```bash
packwiz modrinth install <mod-name>
```

<details>
<summary>💡 その他の追加方法</summary>

```bash
# CurseForge から
packwiz curseforge install <mod-name>

# 手動で jar ファイルを追加（Modrinth/CurseForge にない場合）
# jar ファイルを mods/ フォルダにコピーしてから refresh:
packwiz refresh
```

</details>

### Mod を更新

```bash
# 1つの Mod を更新
packwiz update <mod-name>

# 全 Mod を一括更新
packwiz update --all
```

<details>
<summary>💡 更新前に確認する方法</summary>

```bash
# ドライラン — 実際には更新せず、何が更新されるかだけ表示
packwiz update --all --dry-run
```

</details>

### Mod を削除

```bash
packwiz remove <mod-name>
```

### TaCZ 銃パックの管理

銃パックは `tacz/` フォルダに配置します。CurseForge / Modrinth にあるパックと手動配置パックで手順が異なります。

#### CurseForge / Modrinth のパック（`.pw.toml` で管理）

```bash
# 追加（.pw.toml が tacz/ に自動生成される）
packwiz curseforge install --meta-folder tacz <URL またはスラッグ>
# Modrinth の場合:
packwiz modrinth install --meta-folder tacz <URL またはスラッグ>

# 更新（単体）
packwiz update <パック名>

# 更新（全パック一括）
packwiz update --all

# 削除
packwiz remove <パック名>
```

#### 手動配置パック（`.zip` を直接管理）

CurseForge / Modrinth に無いパックはこちら：

1. **追加**: `.zip` を `tacz/` にコピー → `packwiz refresh`
2. **更新**: 古い `.zip` を新しいファイルに差し替え → `packwiz refresh`
3. **削除**: `.zip` を `tacz/` から削除 → `packwiz refresh`

> 💡 手動 `.zip` は Git で直接追跡されるためリポジトリサイズが増えます。CurseForge にあるパックは必ず上の方法を使ってください。

### 設定ファイルの変更

`config/` 内のファイルを直接編集。`packwiz refresh` は不要です。

---

## 🚀 PR 作成とマージ

```bash
# 1. ブランチを作成
git checkout -b add/new-mod

# 2. 変更を行う
packwiz modrinth install <mod-name>

# 3. コミット & プッシュ
git add -A
git commit -m "Add <mod-name>"
git push -u origin add/new-mod

# 4. PR を作成
gh pr create --title "Add <mod-name>" --body "Added <mod-name> for <reason>"

# 5. マージ（小さな変更ならセルフマージ OK）
gh pr merge --squash
```

> GitHub のウェブサイトからも PR の作成・マージができます。

<details>
<summary>💡 PR タイトルの例</summary>

- `Add Immersive Aircraft`
- `Update TaCZ to v1.2.0`
- `Remove deprecated mod XYZ`
- `Update TaCZ Tweaks config`

</details>

<details>
<summary>💡 マージ後に何が起こる？</summary>

1. **GitHub Actions** が自動で起動
2. `modpack-prism.zip` が生成される
3. **GitHub Releases** にアップロード
4. プレイヤーは次回起動時に自動更新される

</details>

---

## 🔔 Discord 通知

<details>
<summary>Discord 通知を設定する（任意）</summary>

設定すると、モッドパック更新時に Discord に自動通知が届きます。

### 1. Discord Webhook を作成

1. 通知を送りたいチャンネルを開く（例: `#modpack-updates`）
2. **⚙️ チャンネルの編集** → **連携サービス** → **ウェブフック**
3. **新しいウェブフック** → 名前を設定（例: `Modpack Bot`）
4. **ウェブフック URL をコピー**
5. **変更を保存**

### 2. GitHub Secrets に登録

```bash
gh secret set DISCORD_WEBHOOK --repo tekitounix/minecraft-modpack
# プロンプトが表示されたら Webhook URL を貼り付け
```

または: GitHub リポジトリ → **Settings** → **Secrets and variables** → **Actions** → **New repository secret** → Name: `DISCORD_WEBHOOK`, Value: URL

</details>

---

## 📁 ディレクトリ構成

<details>
<summary>ディレクトリ構成を見る</summary>

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

</details>

---

## ❓ トラブルシューティング

<details>
<summary><code>packwiz refresh</code> でエラーが出る</summary>

packwiz のキャッシュフォルダを削除して再試行：
- **macOS / Linux**: `rm -rf ~/.cache/packwiz`
- **Windows (PowerShell)**: `Remove-Item -Recurse -Force "$env:LOCALAPPDATA\packwiz"`

その後 `packwiz refresh` を再実行。

</details>

<details>
<summary>特定の Mod が更新されない</summary>

その Mod の `.pw.toml` ファイルを削除してから再追加：
```bash
packwiz modrinth install <mod-name>
```

</details>

<details>
<summary>index.toml のハッシュが合わない</summary>

```bash
packwiz refresh --force
```

</details>

<details>
<summary>PR がマージできない / コンフリクト</summary>

```bash
git checkout main
git pull
git checkout your-branch
git rebase main
# コンフリクトがあれば解決
git push --force-with-lease
```

</details>

# Custom Modpack for Minecraft 1.20.1

Minecraft 1.20.1 + Forge 47.4.0 用のカスタムモッドパックです。

## 🎮 インストール方法

### 方法1: Packwiz Installer（推奨・自動更新対応）

1. [Prism Launcher](https://prismlauncher.org/) または [MultiMC](https://multimc.org/) をインストール
2. 新しい Minecraft 1.20.1 + Forge 47.4.0 インスタンスを作成
3. [packwiz-installer-bootstrap.jar](https://github.com/packwiz/packwiz-installer-bootstrap/releases) をダウンロード
4. インスタンスの `.minecraft` フォルダに配置
5. Pre-launch command を設定:
   ```
   "$INST_JAVA" -jar packwiz-installer-bootstrap.jar https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/pack.toml
   ```
6. ゲーム起動時に自動的に Mod がダウンロードされます

### 方法2: 手動インストール

1. [Releases](../../releases) から最新の ZIP をダウンロード
2. 展開して `.minecraft/mods/` と `.minecraft/tacz/` に配置

## 📋 Mod 一覧

| カテゴリ | Mod |
|---------|-----|
| 銃火器 | TaCZ (Timeless and Classics Zero), Superb Warfare, WWII Machine Guns |
| 乗り物 | Immersive Aircraft, ASH Vehicles, MCSP Military Vehicle |
| 家具 | Paladin's Furniture, Refurbished Furniture, Macaw's シリーズ |
| 料理 | Farmer's Delight |
| パフォーマンス | Embeddium, Oculus |
| ライブラリ | GeckoLib, Cloth Config, Framework 他 |

## 🖥️ サーバー情報

- **IP:** `25.51.29.103:25565`
- **Hamachi ネットワーク:** 要参加

## 📝 更新履歴

### v1.0.0 (2025-12-31)
- 初回リリース
- TaCZ 1.1.7-release
- 全 39 Mod + 14 TaCZ 拡張パック

## 🔧 トラブルシューティング

### Mod の不一致エラー
サーバーと Mod バージョンが異なる場合は、このリポジトリから最新版を再インストールしてください。

### TaCZ 拡張パックが読み込まれない
`.minecraft/tacz/` フォルダに ZIP ファイルを配置してください（展開不要）。

## 📜 ライセンス

各 Mod のライセンスは元の作者に帰属します。

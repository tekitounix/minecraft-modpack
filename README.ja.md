# 🎮 Minecraft Modpack (1.20.1 + Forge)

> 🌐 **Language / 言語**: [English](README.md) | **日本語**

[![Minecraft](https://img.shields.io/badge/Minecraft-1.20.1-green)](https://minecraft.net)
[![Forge](https://img.shields.io/badge/Forge-47.4.0-orange)](https://files.minecraftforge.net)

Minecraft 1.20.1 + Forge 47.4.0 用のカスタムモッドパックです。  
以下の手順に沿って進めれば、約15分でプレイ開始できます。

---

## 📋 始め方

| ステップ | やること |
|:--------:|---------|
| 1 | [Minecraft を購入する](#1--minecraft-を購入する) |
| 2 | [Hamachi をインストール](#2--hamachi-をインストール) |
| 3 | [Prism Launcher をインストール](#3--prism-launcher-をインストール) |
| 4 | [Modpack をインポート](#4--modpack-をインポート) |
| 5 | [起動して遊ぶ](#5--起動して遊ぶ) |

---

## 1. 🎮 Minecraft を購入する

1. **[minecraft.net](https://www.minecraft.net/ja-jp/store/minecraft-java-bedrock-edition-pc)** にアクセス
2. **「MINECRAFT: JAVA & BEDROCK EDITION」** を購入（約3,960円）
3. **Microsoft アカウント** でサインイン

> 既に Java Edition を持っている？ → ステップ 2 へ

<details>
<summary>💡 購入についての詳細</summary>

- Java Edition と Bedrock Edition がセットで販売されています
- Mod を使うには **Java Edition** が必要です
- **公式サイト以外** からの購入は詐欺の可能性があるので注意
- Microsoft アカウントがない場合は [account.microsoft.com](https://account.microsoft.com) で無料作成

</details>

---

## 2. 🌐 Hamachi をインストール

サーバーに接続するために **Hamachi VPN** が必要です。全員インストールしてください。

1. **[vpn.net](https://vpn.net/)** からダウンロード
2. インストールして起動
3. LogMeIn アカウントを作成（またはサインイン）
4. **「ネットワーク」** → **「既存のネットワークに参加」**
5. **ネットワーク ID** と **パスワード** を入力（サーバー管理者に聞いてください）

> ✅ ネットワーク一覧に表示されれば接続成功！

<details>
<summary>💡 どのファイルをダウンロード？</summary>

| OS | ファイル |
|----|---------|
| Windows | `LogMeInHamachi.msi` |
| macOS | `LogMeInHamachi.dmg` |

</details>

<details>
<summary>⚠️ Hamachi に接続できない場合</summary>

1. ファイアウォールで Hamachi がブロックされていないか確認
2. Hamachi を再起動する
3. ネットワーク ID とパスワードを再確認
4. PC を再起動してみる

</details>

---

## 3. 📥 Prism Launcher をインストール

1. **[prismlauncher.org](https://prismlauncher.org/download/)** からダウンロード
2. インストールして起動
3. Minecraft アカウントを追加：
   - 右上の **「アカウント」** → **「アカウントを管理」**
   - **「Microsoft アカウントを追加」** をクリック
   - ブラウザでサインイン

<details>
<summary>💡 OS別ダウンロードリンク</summary>

| OS | リンク |
|----|-------|
| Windows | [インストーラー (.exe)](https://prismlauncher.org/download/windows/) |
| macOS | [DMG](https://prismlauncher.org/download/mac/) |
| Linux | [AppImage / Flatpak](https://prismlauncher.org/download/linux/) |

</details>

---

## 4. 📦 Modpack をインポート

1. Prism Launcher で **「起動構成を追加」** をクリック
2. 左メニューの **「インポート」** を選択
3. 以下の URL を貼り付け：

```
https://github.com/tekitounix/minecraft-modpack/releases/latest/download/modpack-prism.zip
```

4. **「OK」** をクリック

> 📝 この時点では Mod はまだダウンロードされません。初回起動時に自動でダウンロードされます。

<details>
<summary>💡 あとでアップデートする方法</summary>

モッドパックが更新されたら、同じ URL で **もう一度インポート** するだけ。常に最新版がこのリンクにあります。

または、ゲームを起動するだけでも OK — Mod は自動的に最新版がダウンロードされます！

</details>

---

## 5. 🚀 起動して遊ぶ

1. **Hamachi が接続されていることを確認**（ステップ 2 参照）
2. Prism Launcher でモッドパックをダブルクリック
3. Mod のダウンロードを待つ（初回のみ、少し時間がかかります）
4. タイトル画面で **「マルチプレイ」** → **「ダイレクト接続」**
5. サーバーアドレスを入力（管理者に Hamachi IP を聞いてください）
6. **「サーバーに接続」**

> 💡 管理者の Hamachi IP は、Hamachi のネットワーク一覧で名前の横に表示されています。

<details>
<summary>⚠️ サーバーに接続できない場合</summary>

1. **最も多い原因**: Hamachi が接続されていない → Hamachi を開いて確認
2. サーバー管理者に最新の IP アドレスを確認
3. モッドパックが最新か確認（必要なら再インポート）

</details>

<details>
<summary>⚠️ ゲームが重い・クラッシュする場合</summary>

1. メモリ設定を確認：Prism Launcher → 設定 → Java → 最大メモリが **6144 MB 以上** か確認
2. PC の他のアプリを閉じて RAM を確保
3. PC のメモリが 16GB 以上なら、最大メモリを `8192` MB にすると快適

</details>

---

## ⚙️ メモリ設定

メモリは **自動設定済み** です。変更は不要です。

| 設定 | 値 |
|------|-----|
| 最小 | 2048 MB (2 GB) |
| 最大 | 6144 MB (6 GB) |

<details>
<summary>💡 メモリを調整したい場合</summary>

Prism Launcher → **設定** → **Java**：
- **16GB+ のPC**: 最大メモリを `8192` MB に増やすとより快適
- **8GB のPC**: `6144` MB のまま（デフォルト）で OK
- **8GB 未満**: カクつく可能性あり。他のアプリを閉じて対処

</details>

---

## 🔄 自動更新の仕組み

```
管理者が更新  →  GitHub が自動処理  →  Discord 通知
                                          ↓
ゲームを起動  →  Mod が自動更新  →  最新版でプレイ！
```

**あなたがやること：** いつもどおりゲームを起動するだけ！

<details>
<summary>💡 仕組みの詳細</summary>

1. 管理者が GitHub に変更をプッシュすると、**GitHub Action** が自動で新しい `modpack-prism.zip` を作成
2. Discord 通知が設定されていれば、サーバーに通知が届く
3. ゲーム起動時に Prism Launcher が Mod の更新を確認・ダウンロード
4. 常に最新版でプレイできます

</details>

---

## 🎮 操作キー設定

一部のキーがカスタマイズされています：

| 操作 | キー |
|------|------|
| スニーク（しゃがむ） | **C** |
| スプリント（走る） | **左 Shift** |
| インベントリ | **Tab** |
| プレイヤーリスト | **\\**（バックスラッシュ） |
| 航空機から降りる | **E** |
| TaCZ 操作 | **マウス中ボタン** |
| TaCZ クロール | **X** |

<details>
<summary>💡 デフォルトからの変更一覧</summary>

| 操作 | デフォルト | 変更後 |
|------|-----------|--------|
| スニーク | Shift | **C** |
| スプリント | Ctrl | **左 Shift** |
| インベントリ | E | **Tab** |
| プレイヤーリスト | Tab | **\\** |
| 航空機から降りる (Immersive Aircraft) | R | **E** |
| TaCZ 操作 | O | **マウス中ボタン** |
| TaCZ クロール | C | **X** |

</details>

---

## 🖥️ サーバー情報

| 項目 | 値 |
|------|-----|
| **サーバー IP** | サーバー管理者に確認（Hamachi IP） |
| **ポート** | `25565`（デフォルト） |
| **ネットワーク** | Hamachi VPN 必須 |
| **バージョン** | Minecraft 1.20.1 + Forge 47.4.0 |

---

## 📋 収録 Mod 一覧

<details>
<summary>🔫 銃火器・戦闘（4 Mod）</summary>

| Mod | 説明 |
|-----|------|
| TaCZ (Timeless and Classics Zero) | リアルな銃火器 |
| TaCZ Tweaks | TaCZ の調整・拡張 |
| Superb Warfare | 追加武器 |
| WWII Machine Guns | 第二次世界大戦の機関銃 |

</details>

<details>
<summary>🚗 乗り物（3 Mod）</summary>

| Mod | 説明 |
|-----|------|
| Immersive Aircraft | 飛行機・グライダー |
| ASH Vehicles | 車両 |
| MCSP Military Vehicle | 軍用車両 |

</details>

<details>
<summary>🛋️ 家具・建築（4 Mod）</summary>

| Mod | 説明 |
|-----|------|
| Paladin's Furniture | 家具セット |
| Refurbished Furniture | モダン家具 |
| Macaw's シリーズ | 橋、ドア、フェンス、屋根、窓、照明など |
| ManyIdeas Doors | ドアバリエーション |

</details>

<details>
<summary>⚡ パフォーマンス・その他（3 Mod）</summary>

| Mod | 説明 |
|-----|------|
| Embeddium | 描画最適化（Forge 版 Sodium） |
| Farmer's Delight | 料理拡張 |
| JEI | レシピ検索 |

</details>

<details>
<summary>🔫 TaCZ 拡張パック（自動インストール）</summary>

初回起動時に自動でインストールされます：

| パック | 説明 |
|--------|------|
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

</details>

---

## ❓ その他のトラブルシューティング

<details>
<summary>「Java が見つかりません」エラー</summary>

Prism Launcher → **設定** → **Java** → **「自動検出」** をクリック

</details>

<details>
<summary>Mod のダウンロードに失敗する</summary>

1. インターネット接続を確認
2. Prism Launcher を再起動して再試行
3. ファイアウォールで Prism Launcher がブロックされていないか確認

</details>

---

## 🛠️ コントリビューション

Mod の追加・更新・削除をしたい？ → **[コントリビューションガイド](CONTRIBUTING.ja.md)** を見てください。

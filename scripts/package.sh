#!/bin/bash
# 現在インストールされている Mod を ZIP ファイルにパッケージ化するスクリプト

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUTPUT_DIR="$SCRIPT_DIR/dist"
DATE=$(date +%Y%m%d)

# OS検出
if [[ "$OSTYPE" == "darwin"* ]]; then
    MINECRAFT_DIR="$HOME/Library/Application Support/minecraft"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    MINECRAFT_DIR="$HOME/.minecraft"
else
    echo "エラー: サポートされていないOSです"
    exit 1
fi

MODS_DIR="$MINECRAFT_DIR/mods"
TACZ_DIR="$MINECRAFT_DIR/tacz"

echo "=========================================="
echo "  Modpack パッケージャー"
echo "=========================================="
echo ""

# 出力ディレクトリの作成
mkdir -p "$OUTPUT_DIR"

# mods フォルダを ZIP 化
echo "mods フォルダをパッケージ化中..."
cd "$MODS_DIR"
zip -r "$OUTPUT_DIR/mods-$DATE.zip" *.jar
echo "  -> $OUTPUT_DIR/mods-$DATE.zip を作成しました"

# tacz フォルダを ZIP 化
if [ -d "$TACZ_DIR" ]; then
    echo ""
    echo "tacz フォルダをパッケージ化中..."
    cd "$TACZ_DIR"
    zip -r "$OUTPUT_DIR/tacz-$DATE.zip" *
    echo "  -> $OUTPUT_DIR/tacz-$DATE.zip を作成しました"
fi

echo ""
echo "=========================================="
echo "パッケージ化完了！"
echo "=========================================="
echo ""
echo "配布ファイル:"
ls -la "$OUTPUT_DIR/"
echo ""
echo "これらのファイルを他のプレイヤーに配布し、"
echo "それぞれのフォルダに展開してもらってください。"

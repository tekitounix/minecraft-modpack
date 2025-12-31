#!/bin/bash
# Minecraft 1.20.1 Modpack インストーラー (macOS/Linux)
# このスクリプトは必要なすべての Mod を自動的にダウンロードしてインストールします

set -e

# 色の定義
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}========================================${NC}"
echo -e "${BLUE}  Minecraft 1.20.1 Modpack Installer${NC}"
echo -e "${BLUE}========================================${NC}"
echo ""

# OS検出
if [[ "$OSTYPE" == "darwin"* ]]; then
    MINECRAFT_DIR="$HOME/Library/Application Support/minecraft"
    OS_TYPE="macOS"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    MINECRAFT_DIR="$HOME/.minecraft"
    OS_TYPE="Linux"
else
    echo -e "${RED}エラー: サポートされていないOSです${NC}"
    exit 1
fi

MODS_DIR="$MINECRAFT_DIR/mods"
TACZ_DIR="$MINECRAFT_DIR/tacz"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo -e "${GREEN}検出されたOS: $OS_TYPE${NC}"
echo -e "${GREEN}Minecraft ディレクトリ: $MINECRAFT_DIR${NC}"
echo ""

# Minecraft ディレクトリの存在確認
if [ ! -d "$MINECRAFT_DIR" ]; then
    echo -e "${RED}エラー: Minecraft ディレクトリが見つかりません${NC}"
    echo -e "${YELLOW}Minecraft を一度起動してから再実行してください${NC}"
    exit 1
fi

# mods ディレクトリの作成
mkdir -p "$MODS_DIR"
mkdir -p "$TACZ_DIR"

echo -e "${YELLOW}Mod のインストールを開始します...${NC}"
echo ""

# ダウンロード関数
download_mod() {
    local url="$1"
    local filename="$2"
    local dest_dir="$3"
    
    if [ -f "$dest_dir/$filename" ]; then
        echo -e "  ${GREEN}✓${NC} $filename (既にインストール済み)"
        return 0
    fi
    
    echo -e "  ${BLUE}↓${NC} $filename をダウンロード中..."
    if curl -L -s -o "$dest_dir/$filename" "$url"; then
        # ファイルサイズを確認（小さすぎる場合はエラー）
        local filesize=$(wc -c < "$dest_dir/$filename" | tr -d ' ')
        if [ "$filesize" -lt 1000 ]; then
            echo -e "  ${RED}✗${NC} $filename (ダウンロード失敗 - 手動でダウンロードしてください)"
            rm -f "$dest_dir/$filename"
            return 1
        fi
        echo -e "  ${GREEN}✓${NC} $filename"
        return 0
    else
        echo -e "  ${RED}✗${NC} $filename (ダウンロード失敗)"
        return 1
    fi
}

# Modrinth からダウンロード可能な Mod
echo -e "${BLUE}[1/3] Modrinth から Mod をダウンロード中...${NC}"

download_mod "https://cdn.modrinth.com/data/SISz7Qd3/versions/6gh4O0eI/paladin-furniture-mod-1.4.4-forge-mc1.20.1.jar" \
    "paladin-furniture-mod-1.4.4-forge-mc1.20.1.jar" "$MODS_DIR"

download_mod "https://cdn.modrinth.com/data/nU0bVIaL/versions/8Qyw08ld/Patchouli-1.20.1-84.1-FORGE.jar" \
    "Patchouli-1.20.1-84.1-FORGE.jar" "$MODS_DIR"

download_mod "https://cdn.modrinth.com/data/9s6osm5g/versions/cFOk5vwM/cloth-config-11.1.136-forge.jar" \
    "cloth-config-11.1.136-forge.jar" "$MODS_DIR"

download_mod "https://cdn.modrinth.com/data/1IjD5062/versions/sdafONBN/geckolib-forge-1.20.1-4.7.2.jar" \
    "geckolib-forge-1.20.1-4.7.2.jar" "$MODS_DIR"

download_mod "https://cdn.modrinth.com/data/vvuO3ImH/versions/HHtVgBBB/curios-forge-5.14.1%2B1.20.1.jar" \
    "curios-forge-5.14.1+1.20.1.jar" "$MODS_DIR"

download_mod "https://cdn.modrinth.com/data/sk9rgfiA/versions/MsQOlVPj/embeddium-0.3.31%2Bmc1.20.1.jar" \
    "embeddium-0.3.31+mc1.20.1.jar" "$MODS_DIR"

download_mod "https://cdn.modrinth.com/data/GNxdLCoP/versions/U31e5neg/oculus-mc1.20.1-1.8.0.jar" \
    "oculus-mc1.20.1-1.8.0.jar" "$MODS_DIR"

download_mod "https://cdn.modrinth.com/data/u6dRKJwZ/versions/cEJ0VVKf/jei-1.20.1-forge-15.20.0.112.jar" \
    "jei-1.20.1-forge-15.20.0.112.jar" "$MODS_DIR"

download_mod "https://cdn.modrinth.com/data/ordsPcFz/versions/9vOqrbOR/kotlinforforge-4.11.0-all.jar" \
    "kotlinforforge-4.11.0-all.jar" "$MODS_DIR"

download_mod "https://cdn.modrinth.com/data/R2OftAxM/versions/TBx2N2L5/FarmersDelight-1.20.1-1.2.9.jar" \
    "FarmersDelight-1.20.1-1.2.9.jar" "$MODS_DIR"

download_mod "https://cdn.modrinth.com/data/X6UmSgGg/versions/gH3cSTTH/polymorph-forge-0.49.10%2B1.20.1.jar" \
    "polymorph-forge-0.49.10+1.20.1.jar" "$MODS_DIR"

download_mod "https://cdn.modrinth.com/data/x3JZaLs1/versions/YA0UqPXb/immersive_aircraft-1.2.2%2B1.20.1-forge.jar" \
    "immersive_aircraft-1.2.2+1.20.1-forge.jar" "$MODS_DIR"

download_mod "https://cdn.modrinth.com/data/1eAoo2KR/versions/5Jco5wDN/yet_another_config_lib_v3-3.6.6%2B1.20.1-forge.jar" \
    "yet_another_config_lib_v3-3.6.6+1.20.1-forge.jar" "$MODS_DIR"

download_mod "https://cdn.modrinth.com/data/fgmhI8kH/versions/c6Zllokc/refurbished_furniture-forge-1.20.1-1.0.14.jar" \
    "refurbished_furniture-forge-1.20.1-1.0.14.jar" "$MODS_DIR"

download_mod "https://cdn.modrinth.com/data/lhGA9TYQ/versions/DZHaEIr0/framework-forge-1.20.1-0.7.15.jar" \
    "framework-forge-1.20.1-0.7.15.jar" "$MODS_DIR"

download_mod "https://cdn.modrinth.com/data/Ua7DFN59/versions/2lHlzSKR/player-animation-lib-forge-1.0.2-rc1%2B1.20.jar" \
    "player-animation-lib-forge-1.0.2-rc1+1.20.jar" "$MODS_DIR"

download_mod "https://cdn.modrinth.com/data/Rg0K7tNM/versions/ZCHOqDcU/configured-forge-1.20.1-2.2.3.jar" \
    "configured-forge-1.20.1-2.2.3.jar" "$MODS_DIR"

echo ""
echo -e "${BLUE}[2/3] CurseForge CDN から Mod をダウンロード中...${NC}"

# Macaw's シリーズ
download_mod "https://edge.forgecdn.net/files/5862/408/mcw-bridges-3.1.0-mc1.20.1forge.jar" \
    "mcw-bridges-3.1.0-mc1.20.1forge.jar" "$MODS_DIR"

download_mod "https://edge.forgecdn.net/files/5753/547/mcw-doors-1.1.2-mc1.20.1forge.jar" \
    "mcw-doors-1.1.2-mc1.20.1forge.jar" "$MODS_DIR"

download_mod "https://edge.forgecdn.net/files/5292/965/mcw-fences-1.2.0-1.20.1forge.jar" \
    "mcw-fences-1.2.0-1.20.1forge.jar" "$MODS_DIR"

download_mod "https://edge.forgecdn.net/files/5589/873/mcw-furniture-3.3.0-mc1.20.1forge.jar" \
    "mcw-furniture-3.3.0-mc1.20.1forge.jar" "$MODS_DIR"

download_mod "https://edge.forgecdn.net/files/5489/908/mcw-mcwholidays-1.1.1-mc1.20.1forge.jar" \
    "mcw-mcwholidays-1.1.1-mc1.20.1forge.jar" "$MODS_DIR"

download_mod "https://edge.forgecdn.net/files/5292/979/mcw-lights-1.1.2-mc1.20.1forge.jar" \
    "mcw-lights-1.1.2-mc1.20.1forge.jar" "$MODS_DIR"

download_mod "https://edge.forgecdn.net/files/5860/287/mcw-roofs-2.3.2-mc1.20.1forge.jar" \
    "mcw-roofs-2.3.2-mc1.20.1forge.jar" "$MODS_DIR"

download_mod "https://edge.forgecdn.net/files/5292/920/mcw-stairs-1.0.1-1.20.1forge.jar" \
    "mcw-stairs-1.0.1-1.20.1forge.jar" "$MODS_DIR"

download_mod "https://edge.forgecdn.net/files/6262/254/mcw-mcwwindows-2.4.1-mc1.20.1forge.jar" \
    "mcw-mcwwindows-2.4.1-mc1.20.1forge.jar" "$MODS_DIR"

echo ""
echo -e "${BLUE}[3/3] 手動ダウンロードが必要な Mod を確認中...${NC}"
echo ""

# 手動ダウンロードが必要な Mod のリスト
MANUAL_MODS=(
    "tacz-1.20.1-1.1.6-hotfix.jar|https://www.curseforge.com/minecraft/mc-mods/timeless-and-classics-zero/files"
    "tacz-tweaks-2.7.1-all.jar|https://www.curseforge.com/minecraft/mc-mods/tacz-tweaks/files"
    "endlessammo-1.2.0.jar|https://www.curseforge.com/minecraft/mc-mods/tacz-endless-ammo/files"
    "ashvehicle-4.1-8.7-SNAPSHOT.jar|https://www.curseforge.com/minecraft/mc-mods/ash-vehicle/files"
    "superbwarfare-1.20.1-0.8.7-final-d6ea9a72b.jar|https://www.curseforge.com/minecraft/mc-mods/superb-warfare/files"
    "lrtactical-1.20.1-0.3.0.jar|https://www.curseforge.com/minecraft/mc-mods/tacz-lesraisins-tactical-equipements/files"
    "guccivuitton-1.20.1-0.2.2.jar|https://www.curseforge.com/minecraft/mc-mods/tacz-gucci-vuitton-attachments/files"
    "fels_mgrwwii-1.1.2-forge-1.20.1.jar|https://www.curseforge.com/minecraft/mc-mods/fels-machine-guns-wwii/files"
    "iguana_lib-1.0.4-forge-1.20.1.jar|https://www.curseforge.com/minecraft/mc-mods/iguana-lib/files"
    "ManyIdeasCore-1.20.1-1.4.2.jar|https://www.curseforge.com/minecraft/mc-mods/manyideas-core/files"
    "ManyIdeasDoors-1.20.1-1.2.3.jar|https://www.curseforge.com/minecraft/mc-mods/manyideas-doors/files"
    "MCSP-1.20.1-V1.0.5.jar|https://www.curseforge.com/minecraft/mc-mods/mcsp-military-vehicle/files"
    "RecipesLibrary-1.20.1-2.0.1.jar|https://www.curseforge.com/minecraft/mc-mods/recipes-library/files"
    "Parachute Forge.jar|https://www.curseforge.com/minecraft/mc-mods/better-parachute-paraquedas/files"
)

MISSING_MODS=()

for mod_info in "${MANUAL_MODS[@]}"; do
    filename="${mod_info%%|*}"
    url="${mod_info##*|}"
    if [ ! -f "$MODS_DIR/$filename" ]; then
        MISSING_MODS+=("$filename|$url")
    fi
done

if [ ${#MISSING_MODS[@]} -gt 0 ]; then
    echo -e "${YELLOW}以下の Mod は手動でダウンロードが必要です:${NC}"
    echo ""
    for mod_info in "${MISSING_MODS[@]}"; do
        filename="${mod_info%%|*}"
        url="${mod_info##*|}"
        echo -e "  ${RED}✗${NC} $filename"
        echo -e "    ダウンロード: $url"
        echo ""
    done
    echo -e "${YELLOW}ダウンロード後、$MODS_DIR に配置してください${NC}"
else
    echo -e "${GREEN}すべての Mod がインストール済みです！${NC}"
fi

echo ""
echo -e "${BLUE}========================================${NC}"
echo -e "${GREEN}インストール完了！${NC}"
echo -e "${BLUE}========================================${NC}"
echo ""
echo -e "Mod フォルダ: $MODS_DIR"
echo -e "TaCZ フォルダ: $TACZ_DIR"
echo ""
echo -e "${YELLOW}注意: TaCZ 拡張パック（.zip）は手動で tacz フォルダにコピーしてください${NC}"

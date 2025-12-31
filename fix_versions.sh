#!/bin/bash
cd /Users/tekitou/minecraft/modpack
PW="../bin/packwiz"

# サーバーバージョンに合わせたModを追加
# 各ModのModrinth/CurseForge version-idを指定

echo "=== サーバーバージョンに合わせてMod追加 ==="

# TaCZ 1.1.6-hotfix
echo "Adding TaCZ 1.1.6-hotfix..."
$PW modrinth add --project-id SzzJttH8 --version-id quyywMZF -y

# Superb Warfare 0.8.7
echo "Adding Superb Warfare 0.8.7..."
curl -s "https://api.modrinth.com/v2/project/dpbSLdmq/version" | jq -r '.[] | select(.version_number == "0.8.7") | .id' | head -1 | xargs -I{} $PW modrinth add --project-id dpbSLdmq --version-id {} -y

# TaCZ Tweaks 2.7.1
echo "Adding TaCZ Tweaks 2.7.1..."
curl -s "https://api.modrinth.com/v2/project/O1xDL5ry/version" | jq -r '.[] | select(.version_number == "2.7.1") | .id' | head -1 | xargs -I{} $PW modrinth add --project-id O1xDL5ry --version-id {} -y

# Immersive Aircraft 1.2.2
echo "Adding Immersive Aircraft 1.2.2..."
curl -s "https://api.modrinth.com/v2/project/x3HZvrj6/version" | jq -r '.[] | select(.version_number | contains("1.2.2")) | select(.loaders | index("forge")) | .id' | head -1 | xargs -I{} $PW modrinth add --project-id x3HZvrj6 --version-id {} -y

# GeckoLib 4.7.2
echo "Adding GeckoLib 4.7.2..."
curl -s "https://api.modrinth.com/v2/project/8BmcQJ2H/version" | jq -r '.[] | select(.version_number | contains("4.7.2")) | select(.loaders | index("forge")) | .id' | head -1 | xargs -I{} $PW modrinth add --project-id 8BmcQJ2H --version-id {} -y

# Curios 5.14.1
echo "Adding Curios..."
$PW modrinth add curios -y

# Kotlin for Forge 4.11.0
echo "Adding Kotlin for Forge 4.11.0..."
curl -s "https://api.modrinth.com/v2/project/ordsPcFz/version" | jq -r '.[] | select(.version_number == "4.11.0") | .id' | head -1 | xargs -I{} $PW modrinth add --project-id ordsPcFz --version-id {} -y

# JEI 15.20.0.112
echo "Adding JEI 15.20.0.112..."
curl -s "https://api.modrinth.com/v2/project/u6dRKJwZ/version" | jq -r '.[] | select(.version_number | contains("15.20.0.112")) | .id' | head -1 | xargs -I{} $PW modrinth add --project-id u6dRKJwZ --version-id {} -y

# Iguana Lib 1.0.4
echo "Adding Iguana Lib 1.0.4..."
curl -s "https://api.modrinth.com/v2/project/6EXCw1Gm/version" | jq -r '.[] | select(.version_number | contains("1.0.4")) | select(.loaders | index("forge")) | .id' | head -1 | xargs -I{} $PW modrinth add --project-id 6EXCw1Gm --version-id {} -y

# AshVehicle 4.1-8.7
echo "Adding AshVehicle 4.1-8.7..."
curl -s "https://api.modrinth.com/v2/project/sxXZpNu8/version" | jq -r '.[] | select(.version_number | contains("4.1-8.7")) | .id' | head -1 | xargs -I{} $PW modrinth add --project-id sxXZpNu8 --version-id {} -y

# MCSP 1.0.5
echo "Adding MCSP 1.0.5..."
curl -s "https://api.modrinth.com/v2/project/ufZVeBMn/version" | jq -r '.[] | select(.version_number | contains("1.0.5")) | .id' | head -1 | xargs -I{} $PW modrinth add --project-id ufZVeBMn --version-id {} -y

# Macaw's Furniture 3.3.0
echo "Adding Macaw's Furniture 3.3.0..."
curl -s "https://api.modrinth.com/v2/project/dtWC90iB/version" | jq -r '.[] | select(.version_number | contains("3.3.0")) | select(.game_versions | index("1.20.1")) | .id' | head -1 | xargs -I{} $PW modrinth add --project-id dtWC90iB --version-id {} -y

# Macaw's Fences 1.2.0
echo "Adding Macaw's Fences 1.2.0..."
curl -s "https://api.modrinth.com/v2/project/GmwLse2I/version" | jq -r '.[] | select(.version_number | contains("1.2.0")) | select(.game_versions | index("1.20.1")) | .id' | head -1 | xargs -I{} $PW modrinth add --project-id GmwLse2I --version-id {} -y

# Macaw's Lights 1.1.2
echo "Adding Macaw's Lights 1.1.2..."
curl -s "https://api.modrinth.com/v2/project/w4an97C2/version" | jq -r '.[] | select(.version_number | contains("1.1.2")) | select(.game_versions | index("1.20.1")) | .id' | head -1 | xargs -I{} $PW modrinth add --project-id w4an97C2 --version-id {} -y

# Macaw's Holidays 1.1.1
echo "Adding Macaw's Holidays 1.1.1..."
curl -s "https://api.modrinth.com/v2/project/rH20L2Lp/version" | jq -r '.[] | select(.version_number | contains("1.1.1")) | select(.game_versions | index("1.20.1")) | .id' | head -1 | xargs -I{} $PW modrinth add --project-id rH20L2Lp --version-id {} -y

# Macaw's Windows 2.4.1
echo "Adding Macaw's Windows 2.4.1..."
curl -s "https://api.modrinth.com/v2/project/C7I0BCni/version" | jq -r '.[] | select(.version_number | contains("2.4.1")) | select(.game_versions | index("1.20.1")) | .id' | head -1 | xargs -I{} $PW modrinth add --project-id C7I0BCni --version-id {} -y

# Macaw's Stairs 1.0.1
echo "Adding Macaw's Stairs 1.0.1..."
curl -s "https://api.modrinth.com/v2/project/iP3wH1ha/version" | jq -r '.[] | select(.version_number | contains("1.0.1")) | select(.game_versions | index("1.20.1")) | .id' | head -1 | xargs -I{} $PW modrinth add --project-id iP3wH1ha --version-id {} -y

# Refurbished Furniture 1.0.14
echo "Adding Refurbished Furniture 1.0.14..."
$PW curseforge add refurbished-furniture --file-id 5407195 -y 2>/dev/null || $PW curseforge add refurbished-furniture -y

# 最新バージョンでOKなMod
echo "Adding other mods (latest OK)..."
$PW modrinth add farmers-delight embeddium oculus cloth-config patchouli polymorph playeranimator yacl -y
$PW modrinth add macaws-bridges macaws-doors macaws-roofs -y
$PW modrinth add manyideas-core manyideas-doors recipes-library paladins-furniture -y
$PW modrinth add tacz-gucci-vuitton-attachments tacz-lesraisins-tactical-equipements -y

# SBW Vintage Vehicle Pack
$PW modrinth add sbw-vintage-vehicle-pack -y 2>/dev/null || echo "sbw-vintage-vehicle-pack skipped"

# Endless Ammo
echo "Adding Endless Ammo..."
$PW modrinth add tacz-endless-ammo -y 2>/dev/null || echo "tacz-endless-ammo - trying CurseForge"
$PW curseforge add endless-ammo -y 2>/dev/null || echo "endless-ammo not found"

# CurseForge mods
echo "Adding CurseForge mods..."
$PW curseforge add configured -y
$PW curseforge add framework -y
$PW curseforge add better-parachute-paraquedas -y
$PW curseforge add fels-machine-guns-wwii -y

echo "Refreshing..."
$PW refresh

echo "Done! Count:"
ls mods/*.pw.toml 2>/dev/null | wc -l

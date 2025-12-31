#!/bin/bash
cd /Users/tekitou/minecraft/modpack
PW="../bin/packwiz"

add_mod() {
  echo "Adding $1..."
  echo "1" | timeout 30 $PW modrinth add "$1" -y 2>&1 | tail -1
}

add_cf() {
  echo "Adding $1 (CurseForge)..."
  echo "1" | timeout 30 $PW curseforge add "$1" 2>&1 | tail -1
}

# Core mods
add_mod "timeless-and-classics-zero"
add_mod "superb-warfare"
add_mod "tacz-tweaks"
add_mod "immersive-aircraft"
add_mod "farmers-delight"
add_mod "embeddium"
add_mod "oculus"
add_mod "cloth-config"
add_mod "jei"
add_mod "patchouli"
add_mod "polymorph"
add_mod "playeranimator"
add_mod "kotlin-for-forge"
add_mod "yacl"
add_mod "macaws-furniture"
add_mod "macaws-bridges"
add_mod "macaws-doors"
add_mod "macaws-fences-and-walls"
add_mod "macaws-holidays"
add_mod "macaws-lights-and-lamps"
add_mod "macaws-roofs"
add_mod "macaws-windows"
add_mod "macaws-stairs"
add_mod "refurbished-furniture"
add_mod "manyideas-core"
add_mod "manyideas-doors"
add_mod "iguana-lib"
add_mod "recipes-library"
add_mod "paladins-furniture"

# TaCZ addons
add_mod "tacz-gucci-vuitton-attachments"
add_mod "tacz-lesraisins-tactical-equipements"
add_mod "tacz-endless-ammo"
add_mod "tacz-apocalypse-gun-pack"

# SBW addons
add_mod "sbw-ashvehicle"
add_mod "sbw-mcsp"

# CurseForge mods
add_cf "configured"
add_cf "framework"
add_cf "better-parachute-paraquedas"
add_cf "fels-machine-guns-wwii"

echo "Refreshing..."
$PW refresh

echo "Done! Count:"
ls mods/*.pw.toml 2>/dev/null | wc -l

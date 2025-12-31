#!/bin/bash
# サーバーのjarファイルからpackwiz定義を自動生成

MODS_DIR="/Users/tekitou/Library/Application Support/minecraft/mods"
OUT_DIR="/Users/tekitou/minecraft/modpack/mods"
PW="/Users/tekitou/minecraft/bin/packwiz"

cd /Users/tekitou/minecraft/modpack

for jar in "$MODS_DIR"/*.jar; do
  filename=$(basename "$jar")
  echo "Processing: $filename"
  
  # SHA512ハッシュを計算
  hash=$(shasum -a 512 "$jar" | cut -d' ' -f1)
  
  # Modrinth APIでハッシュ検索
  result=$(curl -s "https://api.modrinth.com/v2/version_file/$hash?algorithm=sha512")
  
  if echo "$result" | jq -e '.id' >/dev/null 2>&1; then
    # Modrinthで見つかった
    version_id=$(echo "$result" | jq -r '.id')
    project_id=$(echo "$result" | jq -r '.project_id')
    echo "  -> Found on Modrinth: $project_id / $version_id"
    $PW modrinth add --project-id "$project_id" --version-id "$version_id" -y 2>/dev/null
  else
    echo "  -> Not found on Modrinth, trying CurseForge..."
    # CurseForgeはハッシュ検索APIがないので、ファイル名から推測
    slug=$(echo "$filename" | sed 's/-[0-9].*//' | tr '[:upper:]' '[:lower:]')
    $PW curseforge add "$slug" -y 2>/dev/null || echo "  -> Failed: $filename"
  fi
done

echo ""
echo "Refreshing index..."
$PW refresh

echo ""
echo "Total mods:"
ls "$OUT_DIR"/*.pw.toml 2>/dev/null | wc -l

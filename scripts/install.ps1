# Minecraft 1.20.1 Modpack インストーラー (Windows)
# このスクリプトは必要なすべての Mod を自動的にダウンロードしてインストールします

$ErrorActionPreference = "Stop"

Write-Host "========================================" -ForegroundColor Blue
Write-Host "  Minecraft 1.20.1 Modpack Installer" -ForegroundColor Blue
Write-Host "========================================" -ForegroundColor Blue
Write-Host ""

# Minecraft ディレクトリの設定
$MinecraftDir = "$env:APPDATA\.minecraft"
$ModsDir = "$MinecraftDir\mods"
$TaczDir = "$MinecraftDir\tacz"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "Minecraft ディレクトリ: $MinecraftDir" -ForegroundColor Green
Write-Host ""

# Minecraft ディレクトリの存在確認
if (-not (Test-Path $MinecraftDir)) {
    Write-Host "エラー: Minecraft ディレクトリが見つかりません" -ForegroundColor Red
    Write-Host "Minecraft を一度起動してから再実行してください" -ForegroundColor Yellow
    exit 1
}

# ディレクトリの作成
New-Item -ItemType Directory -Force -Path $ModsDir | Out-Null
New-Item -ItemType Directory -Force -Path $TaczDir | Out-Null

Write-Host "Mod のインストールを開始します..." -ForegroundColor Yellow
Write-Host ""

# ダウンロード関数
function Download-Mod {
    param (
        [string]$Url,
        [string]$Filename,
        [string]$DestDir
    )
    
    $FilePath = Join-Path $DestDir $Filename
    
    if (Test-Path $FilePath) {
        Write-Host "  [OK] $Filename (既にインストール済み)" -ForegroundColor Green
        return $true
    }
    
    Write-Host "  [DL] $Filename をダウンロード中..." -ForegroundColor Blue
    try {
        $ProgressPreference = 'SilentlyContinue'
        Invoke-WebRequest -Uri $Url -OutFile $FilePath -UseBasicParsing
        $FileSize = (Get-Item $FilePath).Length
        if ($FileSize -lt 1000) {
            Write-Host "  [NG] $Filename (ダウンロード失敗 - 手動でダウンロードしてください)" -ForegroundColor Red
            Remove-Item $FilePath -Force -ErrorAction SilentlyContinue
            return $false
        }
        Write-Host "  [OK] $Filename" -ForegroundColor Green
        return $true
    }
    catch {
        Write-Host "  [NG] $Filename (ダウンロード失敗)" -ForegroundColor Red
        return $false
    }
}

# Modrinth からダウンロード可能な Mod
Write-Host "[1/3] Modrinth から Mod をダウンロード中..." -ForegroundColor Blue

Download-Mod "https://cdn.modrinth.com/data/SISz7Qd3/versions/6gh4O0eI/paladin-furniture-mod-1.4.4-forge-mc1.20.1.jar" `
    "paladin-furniture-mod-1.4.4-forge-mc1.20.1.jar" $ModsDir

Download-Mod "https://cdn.modrinth.com/data/nU0bVIaL/versions/8Qyw08ld/Patchouli-1.20.1-84.1-FORGE.jar" `
    "Patchouli-1.20.1-84.1-FORGE.jar" $ModsDir

Download-Mod "https://cdn.modrinth.com/data/9s6osm5g/versions/cFOk5vwM/cloth-config-11.1.136-forge.jar" `
    "cloth-config-11.1.136-forge.jar" $ModsDir

Download-Mod "https://cdn.modrinth.com/data/1IjD5062/versions/sdafONBN/geckolib-forge-1.20.1-4.7.2.jar" `
    "geckolib-forge-1.20.1-4.7.2.jar" $ModsDir

Download-Mod "https://cdn.modrinth.com/data/vvuO3ImH/versions/HHtVgBBB/curios-forge-5.14.1%2B1.20.1.jar" `
    "curios-forge-5.14.1+1.20.1.jar" $ModsDir

Download-Mod "https://cdn.modrinth.com/data/sk9rgfiA/versions/MsQOlVPj/embeddium-0.3.31%2Bmc1.20.1.jar" `
    "embeddium-0.3.31+mc1.20.1.jar" $ModsDir

Download-Mod "https://cdn.modrinth.com/data/GNxdLCoP/versions/U31e5neg/oculus-mc1.20.1-1.8.0.jar" `
    "oculus-mc1.20.1-1.8.0.jar" $ModsDir

Download-Mod "https://cdn.modrinth.com/data/u6dRKJwZ/versions/cEJ0VVKf/jei-1.20.1-forge-15.20.0.112.jar" `
    "jei-1.20.1-forge-15.20.0.112.jar" $ModsDir

Download-Mod "https://cdn.modrinth.com/data/ordsPcFz/versions/9vOqrbOR/kotlinforforge-4.11.0-all.jar" `
    "kotlinforforge-4.11.0-all.jar" $ModsDir

Download-Mod "https://cdn.modrinth.com/data/R2OftAxM/versions/TBx2N2L5/FarmersDelight-1.20.1-1.2.9.jar" `
    "FarmersDelight-1.20.1-1.2.9.jar" $ModsDir

Download-Mod "https://cdn.modrinth.com/data/X6UmSgGg/versions/gH3cSTTH/polymorph-forge-0.49.10%2B1.20.1.jar" `
    "polymorph-forge-0.49.10+1.20.1.jar" $ModsDir

Download-Mod "https://cdn.modrinth.com/data/x3JZaLs1/versions/YA0UqPXb/immersive_aircraft-1.2.2%2B1.20.1-forge.jar" `
    "immersive_aircraft-1.2.2+1.20.1-forge.jar" $ModsDir

Download-Mod "https://cdn.modrinth.com/data/1eAoo2KR/versions/5Jco5wDN/yet_another_config_lib_v3-3.6.6%2B1.20.1-forge.jar" `
    "yet_another_config_lib_v3-3.6.6+1.20.1-forge.jar" $ModsDir

Download-Mod "https://cdn.modrinth.com/data/fgmhI8kH/versions/c6Zllokc/refurbished_furniture-forge-1.20.1-1.0.14.jar" `
    "refurbished_furniture-forge-1.20.1-1.0.14.jar" $ModsDir

Download-Mod "https://cdn.modrinth.com/data/lhGA9TYQ/versions/DZHaEIr0/framework-forge-1.20.1-0.7.15.jar" `
    "framework-forge-1.20.1-0.7.15.jar" $ModsDir

Download-Mod "https://cdn.modrinth.com/data/Ua7DFN59/versions/2lHlzSKR/player-animation-lib-forge-1.0.2-rc1%2B1.20.jar" `
    "player-animation-lib-forge-1.0.2-rc1+1.20.jar" $ModsDir

Download-Mod "https://cdn.modrinth.com/data/Rg0K7tNM/versions/ZCHOqDcU/configured-forge-1.20.1-2.2.3.jar" `
    "configured-forge-1.20.1-2.2.3.jar" $ModsDir

Write-Host ""
Write-Host "[2/3] CurseForge CDN から Mod をダウンロード中..." -ForegroundColor Blue

# Macaw's シリーズ
Download-Mod "https://edge.forgecdn.net/files/5862/408/mcw-bridges-3.1.0-mc1.20.1forge.jar" `
    "mcw-bridges-3.1.0-mc1.20.1forge.jar" $ModsDir

Download-Mod "https://edge.forgecdn.net/files/5753/547/mcw-doors-1.1.2-mc1.20.1forge.jar" `
    "mcw-doors-1.1.2-mc1.20.1forge.jar" $ModsDir

Download-Mod "https://edge.forgecdn.net/files/5292/965/mcw-fences-1.2.0-1.20.1forge.jar" `
    "mcw-fences-1.2.0-1.20.1forge.jar" $ModsDir

Download-Mod "https://edge.forgecdn.net/files/5589/873/mcw-furniture-3.3.0-mc1.20.1forge.jar" `
    "mcw-furniture-3.3.0-mc1.20.1forge.jar" $ModsDir

Download-Mod "https://edge.forgecdn.net/files/5489/908/mcw-mcwholidays-1.1.1-mc1.20.1forge.jar" `
    "mcw-mcwholidays-1.1.1-mc1.20.1forge.jar" $ModsDir

Download-Mod "https://edge.forgecdn.net/files/5292/979/mcw-lights-1.1.2-mc1.20.1forge.jar" `
    "mcw-lights-1.1.2-mc1.20.1forge.jar" $ModsDir

Download-Mod "https://edge.forgecdn.net/files/5860/287/mcw-roofs-2.3.2-mc1.20.1forge.jar" `
    "mcw-roofs-2.3.2-mc1.20.1forge.jar" $ModsDir

Download-Mod "https://edge.forgecdn.net/files/5292/920/mcw-stairs-1.0.1-1.20.1forge.jar" `
    "mcw-stairs-1.0.1-1.20.1forge.jar" $ModsDir

Download-Mod "https://edge.forgecdn.net/files/6262/254/mcw-mcwwindows-2.4.1-mc1.20.1forge.jar" `
    "mcw-mcwwindows-2.4.1-mc1.20.1forge.jar" $ModsDir

Write-Host ""
Write-Host "[3/3] 手動ダウンロードが必要な Mod を確認中..." -ForegroundColor Blue
Write-Host ""

# 手動ダウンロードが必要な Mod のリスト
$ManualMods = @(
    @{Filename="tacz-1.20.1-1.1.6-hotfix.jar"; Url="https://www.curseforge.com/minecraft/mc-mods/timeless-and-classics-zero/files"},
    @{Filename="tacz-tweaks-2.7.1-all.jar"; Url="https://www.curseforge.com/minecraft/mc-mods/tacz-tweaks/files"},
    @{Filename="endlessammo-1.2.0.jar"; Url="https://www.curseforge.com/minecraft/mc-mods/tacz-endless-ammo/files"},
    @{Filename="ashvehicle-4.1-8.7-SNAPSHOT.jar"; Url="https://www.curseforge.com/minecraft/mc-mods/ash-vehicle/files"},
    @{Filename="superbwarfare-1.20.1-0.8.7-final-d6ea9a72b.jar"; Url="https://www.curseforge.com/minecraft/mc-mods/superb-warfare/files"},
    @{Filename="lrtactical-1.20.1-0.3.0.jar"; Url="https://www.curseforge.com/minecraft/mc-mods/tacz-lesraisins-tactical-equipements/files"},
    @{Filename="guccivuitton-1.20.1-0.2.2.jar"; Url="https://www.curseforge.com/minecraft/mc-mods/tacz-gucci-vuitton-attachments/files"},
    @{Filename="fels_mgrwwii-1.1.2-forge-1.20.1.jar"; Url="https://www.curseforge.com/minecraft/mc-mods/fels-machine-guns-wwii/files"},
    @{Filename="iguana_lib-1.0.4-forge-1.20.1.jar"; Url="https://www.curseforge.com/minecraft/mc-mods/iguana-lib/files"},
    @{Filename="ManyIdeasCore-1.20.1-1.4.2.jar"; Url="https://www.curseforge.com/minecraft/mc-mods/manyideas-core/files"},
    @{Filename="ManyIdeasDoors-1.20.1-1.2.3.jar"; Url="https://www.curseforge.com/minecraft/mc-mods/manyideas-doors/files"},
    @{Filename="MCSP-1.20.1-V1.0.5.jar"; Url="https://www.curseforge.com/minecraft/mc-mods/mcsp-military-vehicle/files"},
    @{Filename="RecipesLibrary-1.20.1-2.0.1.jar"; Url="https://www.curseforge.com/minecraft/mc-mods/recipes-library/files"},
    @{Filename="Parachute Forge.jar"; Url="https://www.curseforge.com/minecraft/mc-mods/better-parachute-paraquedas/files"}
)

$MissingMods = @()

foreach ($mod in $ManualMods) {
    $FilePath = Join-Path $ModsDir $mod.Filename
    if (-not (Test-Path $FilePath)) {
        $MissingMods += $mod
    }
}

if ($MissingMods.Count -gt 0) {
    Write-Host "以下の Mod は手動でダウンロードが必要です:" -ForegroundColor Yellow
    Write-Host ""
    foreach ($mod in $MissingMods) {
        Write-Host "  [NG] $($mod.Filename)" -ForegroundColor Red
        Write-Host "    ダウンロード: $($mod.Url)" -ForegroundColor Gray
        Write-Host ""
    }
    Write-Host "ダウンロード後、$ModsDir に配置してください" -ForegroundColor Yellow
} else {
    Write-Host "すべての Mod がインストール済みです！" -ForegroundColor Green
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Blue
Write-Host "インストール完了！" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Blue
Write-Host ""
Write-Host "Mod フォルダ: $ModsDir"
Write-Host "TaCZ フォルダ: $TaczDir"
Write-Host ""
Write-Host "注意: TaCZ 拡張パック（.zip）は手動で tacz フォルダにコピーしてください" -ForegroundColor Yellow
Write-Host ""
Write-Host "終了するには任意のキーを押してください..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

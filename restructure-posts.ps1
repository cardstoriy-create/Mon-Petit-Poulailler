#Requires -Version 5.0
<#
.SYNOPSIS
    Restructures Hugo blog post directories, renames files to 'index.md' if needed,
    and adds a 'aliases' entry to the front matter for SEO preservation.
.DESCRIPTION
    This script automates the following for a list of predefined blog posts:
    1. Renames the post's parent folder.
    2. If an old-style markdown file (e.g., 'folder-name.md') exists, it renames it to 'index.md'.
    3. Adds an 'aliases' field to the 'index.md' front matter to redirect from the old URL,
       preventing broken links.
.NOTES
    - Run this script from the root of your Hugo project.
    - Ensure you have backups before running the script.
#>

$ErrorActionPreference = 'Stop'

# Set the base path for your posts
$postsPath = ".\content\posts"

# Define the list of renames: Old folder name -> New folder name
$renameMap = @{
    'construire-son-poulailler-soi-même-diy-ou-acheter-un-kit-prêt-à-monter-le-guide-budget' = 'construire-son-poulailler-guide';
    'épluchures-de-pommes-de-terre-aux-poules-crues-ou-cuites-le-guide-de-sécurité-pour-les-débutants' = 'pommes-de-terre-danger';
    'peut-on-donner-du-pain-aux-poules' = 'donner-du-pain-poules';
    'poux-rouges-chez-la-poule-comment-les-détecter-et-éradiquer-cette-menace-nocturne-le-guide-de-survie' = 'poux-rouges-guide';
    'pourquoi-mes-poules-ne-pondent-plus-les-5-raisons-courantes-et-comment-y-remédier' = 'poules-ne-pondent-plus';
    'neige-glace-et-gelure-le-danger-silencieux-de-lhiver-pour-vos-poules' = 'danger-hiver-poules';
    'les-10-accessoires-indispensables-pour-accueillir-vos-premières-poules-et-démarrer-sans-stress' = 'accessoires-debutant-poules';
    'protéger-votre-poulailler-en-hiver-les-5-équipements-indispensables-contre-le-froid-et-la-neige' = 'equiper-poulailler-hiver';
}

# Process each item in the map
foreach ($item in $renameMap.GetEnumerator()) {
    $oldFolderName = $item.Name
    $newFolderName = $item.Value
    
    $oldFolderPath = Join-Path -Path $postsPath -ChildPath $oldFolderName
    $newFolderPath = Join-Path -Path $postsPath -ChildPath $newFolderName

    Write-Host "Processing: $oldFolderName -> $newFolderName"

    # Check if the old folder exists
    if (-not (Test-Path -Path $oldFolderPath -PathType Container)) {
        Write-Warning "Folder not found: '$oldFolderPath'. Skipping."
        continue
    }

    # 1. Rename the physical folder
    try {
        Rename-Item -Path $oldFolderPath -NewName $newFolderName
        Write-Host "  [OK] Renamed folder to '$newFolderName'"
    }
    catch {
        Write-Error "Failed to rename folder '$oldFolderPath'. $_"
        continue
    }

    $indexPath = Join-Path -Path $newFolderPath -ChildPath "index.md"
    $oldFilePath = Join-Path -Path $newFolderPath -ChildPath "$oldFolderName.md"

    # 2. If a file inside is named 'old-folder-name.md', rename it to 'index.md'
    if (Test-Path -Path $oldFilePath -PathType Leaf) {
        try {
            Rename-Item -Path $oldFilePath -NewName "index.md"
            Write-Host "  [OK] Renamed file '$oldFolderName.md' to 'index.md'"
        }
        catch {
            Write-Error "Failed to rename '$oldFilePath' to 'index.md'. $_"
            continue
        }
    }
    
    # Check if index.md exists before proceeding
    if (-not (Test-Path -Path $indexPath -PathType Leaf)) {
        Write-Warning "File not found: '$indexPath'. Cannot add alias. Skipping."
        continue
    }

    # 3. Add the alias to the front matter
    try {
        # Read file content, preserving newlines
        $content = Get-Content -Path $indexPath -Raw
        
        # Check if front matter exists
        if ($content -match '^\s*\+\+\+.*\+\+\+\s*') {
            $aliasEntry = "aliases = [""/$oldFolderName/""]"
            
            # Check if aliases entry already exists to avoid duplicates
            if ($content -match 'aliases\s*=\s*\[') {
                Write-Host "  [INFO] 'aliases' key already exists in '$indexPath'. Skipping addition."
            }
            else {
                 # Insert the alias right after the opening '+++'
                $newContent = $content -replace '(?m)(^\s*\+\+\+)', "`$1`n$aliasEntry"
                $newContent | Set-Content -Path $indexPath -Encoding UTF8
                Write-Host "  [OK] Added alias '$aliasEntry' to '$indexPath'"
            }
        }
        else {
            Write-Warning "No TOML front matter ('+++') found in '$indexPath'. Skipping alias."
        }
    }
    catch {
        Write-Error "Failed to process file '$indexPath'. $_"
    }
}

Write-Host "`nScript finished."

<#
.SYNOPSIS
    Replace the placeholder repository identity across all text files.

.DESCRIPTION
    The repository ships with greppable placeholders so it works before you have
    chosen a GitHub home:

        OWNER             -> your GitHub username or organization
        ai-driven-sdlc    -> the repository name
        <<MAINTAINER NAME>> -> the lead maintainer's name (optional)
        <<CONTACT_EMAIL>>   -> a contact / security email (optional)

    This script rewrites those tokens in every tracked text file in one pass.
    It is safe to re-run.

.EXAMPLE
    pwsh scripts/set-repo-identity.ps1 -Owner acme-edu

.EXAMPLE
    pwsh scripts/set-repo-identity.ps1 -Owner jdoe -Repo sdlc-book `
        -Maintainer "Jane Doe" -Email security@example.org
#>
[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)] [string]$Owner,
    [string]$Repo = "ai-driven-sdlc",
    [string]$Maintainer,
    [string]$Email
)

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot

# Text-ish extensions we are willing to rewrite. Binaries are never touched.
$include = @("*.md","*.yml","*.yaml","*.cff","*.toml","*.json","*.jsonc",
             "*.txt","*.html","*.cfg","*.ini","*.ps1","*.sh","*.py","*.css")
$skipDirs = @(".git","dist","site","node_modules")

$replacements = [ordered]@{
    "OWNER/ai-driven-sdlc" = "$Owner/$Repo"
    "OWNER.github.io/ai-driven-sdlc" = "$Owner.github.io/$Repo"
}
# Bare repo-name token last so it doesn't clobber the compound ones above.
if ($Repo -ne "ai-driven-sdlc") { $replacements["ai-driven-sdlc"] = $Repo }
$replacements["OWNER"] = $Owner
if ($Maintainer) { $replacements["<<MAINTAINER NAME>>"] = $Maintainer }
if ($Email)      { $replacements["<<CONTACT_EMAIL>>"]   = $Email }

$changed = 0
Get-ChildItem -Path $root -Recurse -File -Include $include | Where-Object {
    $p = $_.FullName
    -not ($skipDirs | Where-Object { $p -match "[\\/]$_[\\/]" })
} | ForEach-Object {
    $content = Get-Content -Raw -LiteralPath $_.FullName
    $orig = $content
    foreach ($k in $replacements.Keys) {
        $content = $content.Replace($k, $replacements[$k])
    }
    if ($content -ne $orig) {
        Set-Content -LiteralPath $_.FullName -Value $content -NoNewline
        Write-Host "updated: $($_.FullName.Substring($root.Length+1))"
        $changed++
    }
}
Write-Host "`nDone. $changed file(s) updated -> $Owner/$Repo"
if (-not $Maintainer) { Write-Host "note: <<MAINTAINER NAME>> left as-is (pass -Maintainer to set it)." }
if (-not $Email)      { Write-Host "note: <<CONTACT_EMAIL>> left as-is (pass -Email to set it)." }

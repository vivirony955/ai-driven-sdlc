<#
.SYNOPSIS
    Build the distributable book formats (PDF, EPUB, HTML) into ./dist.

.DESCRIPTION
    PDF  <- LibreOffice headless (faithful to the typeset Word document)
    EPUB <- pandoc (semantic, reflowable, with a table of contents)
    HTML <- pandoc (single self-contained file)

    Requires pandoc and LibreOffice (soffice.exe) on PATH. CI runs the same steps
    in .github/workflows/build-book.yml; installing locally is only for previewing.
#>
[CmdletBinding()]
param([string]$Out = "dist")

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
Set-Location $root

$src   = "book/AI_Driven_SDLC_System.docx"
$title = "An AI-Driven Software Development System"
$stem  = "AI_Driven_SDLC_System"

if (-not (Test-Path $src)) { throw "ERROR: $src not found" }
New-Item -ItemType Directory -Force -Path $Out | Out-Null

function Have($name) { [bool](Get-Command $name -ErrorAction SilentlyContinue) }

# --- PDF via LibreOffice -----------------------------------------------------
$soffice = @("soffice","libreoffice") | Where-Object { Have $_ } | Select-Object -First 1
if (-not $soffice) {
    $cand = "C:\Program Files\LibreOffice\program\soffice.exe"
    if (Test-Path $cand) { $soffice = $cand }
}
if ($soffice) {
    Write-Host ">> PDF  (LibreOffice)"
    & $soffice --headless --convert-to pdf --outdir $Out $src | Out-Null
} else {
    Write-Host "!! skipping PDF: LibreOffice (soffice) not found"
}

# --- EPUB + HTML via pandoc --------------------------------------------------
if (Have pandoc) {
    Write-Host ">> EPUB (pandoc)"
    pandoc $src -o "$Out/$stem.epub" --toc --toc-depth=2 `
        --metadata title="$title" --metadata lang=en

    Write-Host ">> HTML (pandoc, self-contained)"
    pandoc $src -o "$Out/$stem.html" --standalone --toc --toc-depth=3 --embed-resources `
        --metadata title="$title" --metadata lang=en
} else {
    Write-Host "!! skipping EPUB/HTML: pandoc not found"
}

Write-Host "`nArtifacts in ./$Out:"
Get-ChildItem $Out -ErrorAction SilentlyContinue | Format-Table Name, Length -AutoSize

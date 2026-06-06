#!/usr/bin/env bash
# Build the distributable book formats from the canonical .docx into ./dist.
#
#   PDF  <- LibreOffice headless (faithful to the typeset Word document)
#   EPUB <- pandoc (semantic, reflowable, with a table of contents)
#   HTML <- pandoc (single self-contained file, for "read offline")
#
# Requirements: pandoc (https://pandoc.org) and LibreOffice (soffice on PATH).
# CI runs the equivalent steps in .github/workflows/build-book.yml, so installing
# these locally is only needed if you want to preview before tagging a release.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

SRC="book/AI_Driven_SDLC_System.docx"
OUT="dist"
TITLE="An AI-Driven Software Development System"
STEM="AI_Driven_SDLC_System"

mkdir -p "$OUT"
[ -f "$SRC" ] || { echo "ERROR: $SRC not found"; exit 1; }

have() { command -v "$1" >/dev/null 2>&1; }

# --- PDF via LibreOffice -----------------------------------------------------
SOFFICE=""
for c in soffice libreoffice; do have "$c" && SOFFICE="$c" && break; done
if [ -n "$SOFFICE" ]; then
  echo ">> PDF  (LibreOffice)"
  "$SOFFICE" --headless --convert-to pdf --outdir "$OUT" "$SRC" >/dev/null
else
  echo "!! skipping PDF: LibreOffice (soffice) not found"
fi

# --- EPUB + HTML via pandoc --------------------------------------------------
if have pandoc; then
  echo ">> EPUB (pandoc)"
  pandoc "$SRC" -o "$OUT/$STEM.epub" \
    --toc --toc-depth=2 \
    --metadata title="$TITLE" \
    --metadata lang=en

  echo ">> HTML (pandoc, self-contained)"
  pandoc "$SRC" -o "$OUT/$STEM.html" \
    --standalone --toc --toc-depth=3 --embed-resources \
    --metadata title="$TITLE" \
    --metadata lang=en
else
  echo "!! skipping EPUB/HTML: pandoc not found"
fi

echo
echo "Artifacts in ./$OUT:"
ls -lh "$OUT" 2>/dev/null || true

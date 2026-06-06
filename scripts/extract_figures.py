#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Extract embedded figures from the manuscript .docx into figures/.

The book's canonical source is the .docx (see book/README.md). This script
pulls the embedded raster images out into standalone, referenceable PNG files
and builds figures/FIGURES.md -- a registry that pairs every figure with the
nearest in-text caption and an ALT-TEXT slot.

WHY THIS EXISTS
    The .docx ships with 0 alt-text descriptions on its drawings (verified at
    audit time). Standalone files + a registry let contributors add accessible
    descriptions one figure at a time via normal pull requests, and let the
    website/EPUB build reference real image files.

USAGE
    python scripts/extract_figures.py

Dependencies: python-docx  (pip install python-docx)
"""
from __future__ import annotations
import re
import sys
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DOCX = ROOT / "book" / "AI_Driven_SDLC_System.docx"
OUT = ROOT / "figures"


def nearest_captions(docx_path: Path) -> list[str]:
    """Best-effort: collect paragraphs that look like figure captions, in order."""
    try:
        from docx import Document
    except ImportError:
        return []
    doc = Document(str(docx_path))
    caps = []
    for p in doc.paragraphs:
        t = (p.text or "").strip()
        if re.match(r"^(figure|fig\.?)\s*[\dA-Z]", t, flags=re.I):
            caps.append(t)
    return caps


def main() -> int:
    if not DOCX.exists():
        print(f"ERROR: manuscript not found at {DOCX}", file=sys.stderr)
        return 1
    OUT.mkdir(parents=True, exist_ok=True)

    z = zipfile.ZipFile(DOCX)
    media = sorted(
        (n for n in z.namelist() if n.startswith("word/media/")),
        key=lambda n: int(re.sub(r"\D", "", n.rsplit("/", 1)[-1]) or 0),
    )
    captions = nearest_captions(DOCX)

    rows = []
    for i, name in enumerate(media, start=1):
        ext = name.rsplit(".", 1)[-1].lower()
        out_name = f"figure-{i:02d}.{ext}"
        (OUT / out_name).write_bytes(z.read(name))
        cap = captions[i - 1] if i - 1 < len(captions) else ""
        rows.append((out_name, cap))
        print(f"wrote figures/{out_name}")

    # Build the registry
    lines = [
        "# Figure registry",
        "",
        "Standalone copies of every figure embedded in the manuscript, extracted by",
        "`scripts/extract_figures.py`. Each figure needs an accessible **alt-text**",
        "description. The manuscript shipped with none, so the `Alt text` column starts",
        "empty on purpose -- adding a description is one of the easiest first",
        "contributions to this project. See [ACCESSIBILITY.md](../ACCESSIBILITY.md).",
        "",
        "| # | File | In-text caption (best-effort) | Alt text (needed) |",
        "|---|------|-------------------------------|-------------------|",
    ]
    for idx, (fn, cap) in enumerate(rows, start=1):
        cap_md = cap.replace("|", "\\|") if cap else "_(none detected)_"
        lines.append(f"| {idx} | [`{fn}`]({fn}) | {cap_md} | _TODO_ |")
    lines.append("")
    (OUT / "FIGURES.md").write_text("\n".join(lines), encoding="utf-8")
    print(f"\nwrote figures/FIGURES.md ({len(rows)} figures, "
          f"{sum(1 for _, c in rows if c)} captions detected)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

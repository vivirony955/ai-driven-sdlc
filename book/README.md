# The manuscript

This directory holds the **canonical, editable source** of the book:

- [`AI_Driven_SDLC_System.docx`](AI_Driven_SDLC_System.docx) — the full textbook
  (25 chapters, 6 bridges, 3 appendices; ~240 pages).
- [`TABLE_OF_CONTENTS.md`](TABLE_OF_CONTENTS.md) — the complete chapter list.

The published PDF, EPUB, and HTML editions are **generated from this file** by CI
on every release — they are outputs, not sources. Do not edit them directly.

## Why a `.docx` is the source

This book was written, edited, and professionally reviewed in Word, and the
maintainers chose to keep that as the source of truth (see the Phase 1 audit in
the project history). The rich callouts — *Key Idea*, *Example*, *Common Pitfall*,
*Atlas Learn*, *Learning Objectives* — are styled tables that survive cleanly in
Word and render faithfully to PDF via LibreOffice.

The trade-off is that a binary file does not diff or merge like plain text. The
contribution workflow below is designed around that.

## Reader paths

The book supports a careful **linear** read, but most readers do better with one
of four guided paths (defined in full in *How to Read This Book* inside the
manuscript). Whichever you choose: **read the Preface first and the Glossary
last.**

1. **First-year undergraduate** — build vocabulary and intuition. Ch 1 → 2 → 3 →
   10 (roles only) → 13 → 23.
2. **Upper-level undergraduate / new practitioner** — add the operating
   disciplines and quality concerns.
3. **Senior engineer / tech lead** — the full operating and quality spine, plus
   the bridges.
4. **Self-learner / skeptic** — motivation, limits, and principles first.

The website renders these paths as clickable tracks; see
[`website/docs/adopt/`](../website/docs/adopt/).

## How to propose a change

| Change type | How |
|---|---|
| **Typo / factual error / unclear sentence** | Open an [errata issue](../.github/ISSUE_TEMPLATE/) quoting the chapter + sentence. A maintainer applies it to the `.docx`. This is the highest-signal contribution for prose. |
| **Larger prose edit** | Open an issue first to agree the change, then attach a marked-up `.docx` (Word *Track Changes*) or a clear before/after. See [CONTRIBUTING.md](../CONTRIBUTING.md#editing-the-manuscript). |
| **Figure alt-text** | Edit [`../figures/FIGURES.md`](../figures/FIGURES.md) directly — a normal pull request. |
| **Code example / exercise / script / website** | Normal pull request against [`examples/`](../examples/), [`exercises/`](../exercises/), etc. |

Every change of substance should also add a line to [CHANGELOG.md](../CHANGELOG.md).

## Editing tips for maintainers

- Keep the heading styles intact (`Heading 1` = chapter, `Heading 2/3/4` =
  sections) — the TOC, EPUB chapters, and website nav are derived from them.
- Keep callout tables single-cell with the label on the first line; the build and
  the slide generator key off that shape.
- After editing, re-run `python scripts/extract_figures.py` if any figure changed,
  and bump the version in [`../CITATION.cff`](../CITATION.cff) and
  [`../CHANGELOG.md`](../CHANGELOG.md).

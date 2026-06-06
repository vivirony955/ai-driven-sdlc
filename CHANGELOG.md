# Changelog

All notable changes to this project are documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and the project uses a **book-adapted [Semantic Versioning](https://semver.org/)**:

- **MAJOR** (`x.0.0`) — a new **edition**: structural changes, new/removed
  chapters, or revisions that change what the book argues or teaches.
- **MINOR** (`x.y.0`) — substantive additions that don't restructure: new
  sections, exercises, examples, translations, or major accessibility work.
- **PATCH** (`x.y.z`) — errata, typo fixes, clarifications, alt-text, tooling and
  website fixes.

> Add a bullet under **[Unreleased]** in the same PR as any user-visible change.
> Categories: `Added`, `Changed`, `Fixed`, `Deprecated`, `Removed`, `Security`.

## [Unreleased]

### Added
- Open-source repository scaffolding: professional directory structure;
  `README`, `CONTRIBUTING`, `SECURITY`, `GOVERNANCE`, `ROADMAP`, `AUTHORS`,
  `ACKNOWLEDGEMENTS`, `ACCESSIBILITY`.
- Companion-material homes: `book/`, `slides/`, `test-bank/`, `figures/`,
  `exercises/`, `solutions/`, `examples/`, `references/`, `assets/`, `archive/`.
- 22 figures extracted as standalone PNGs with a figure registry
  (`figures/FIGURES.md`) and `scripts/extract_figures.py`.
- Citation support (`CITATION.cff`, `references/CITING.md`).
- Tooling: identity-setter and local build scripts; CI workflows for lint,
  link-check, spell-check, book build, website deploy, and releases.
- MkDocs Material website with educator/student/self-learner adoption guides.

### Pending (tracked, not yet landed)
- `LICENSE` (CC BY 4.0) and `LICENSE-CODE` (MIT) — *deferred; see [ROADMAP](ROADMAP.md).*
- `CODE_OF_CONDUCT.md` (Contributor Covenant) — *deferred.*
- Figure alt-text (registry rows currently `_TODO_`).
- Brand assets (`assets/cover.png`, `logo.svg`, `social-preview.png`).
- Companion solutions volume (`solutions/`).

## [1.0.0] — 2026-04

The first public **edition** of the manuscript, slides, and test bank, as handed
to this repository.

### Added
- Full textbook: 25 chapters (0–24) in six parts, 6 bridge chapters, 3 appendices.
- 33 lecture decks (one per chapter/bridge/appendix).
- Instructor test bank (multiple-choice, short-answer, essay; answer keys; LO tags).
- Running case study: *Atlas Learn*.

### Fixed (pre-release editorial remediation)
- Closed 14/14 actionable items from the editorial review (Critical, High, and
  Medium bands) — stray tokens, list-counter runaway, learning-objective
  numbering, cross-reference normalization, slide diagrams, readability, and a
  copy-edit pass. Details in
  [`archive/editorial-history/FIX_PROGRESS.md`](archive/editorial-history/FIX_PROGRESS.md).

[Unreleased]: https://github.com/vivirony955/ai-driven-sdlc/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/vivirony955/ai-driven-sdlc/releases/tag/v1.0.0

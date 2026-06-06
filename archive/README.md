# Archive

Frozen material that is **kept for the record but is not the living source** of the
project.

```text
archive/
├── source-bundles/      Original delivery bundles (e.g. the slides .zip)
└── editorial-history/   Pre-publication review and fix logs
```

- **`source-bundles/`** — the original `AI_Driven_SDLC_Slides.zip` as delivered.
  The individual decks were extracted into [`../slides/`](../slides/), which is the
  canonical, browsable source. This zip is retained for provenance and is excluded
  from version control (see [`.gitignore`](../.gitignore)) to avoid committing a
  large redundant binary — it stays on disk for whoever holds the repo.
- **`editorial-history/`** — `FIX_PROGRESS.md`, the pre-publication editorial
  review and remediation log (14/14 actionable items closed). Useful context for
  understanding the state of the v1.0 manuscript and what was deferred to a second
  edition.

Nothing here should be edited as part of normal work. Treat it as read-only
history.

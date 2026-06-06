# Website

The project's public site (the **“Read online”** portal), built with
[**Material for MkDocs**](https://squidfunk.github.io/mkdocs-material/) and deployed
to GitHub Pages by
[`.github/workflows/deploy-website.yml`](../.github/workflows/deploy-website.yml).

- Config: [`mkdocs.yml`](mkdocs.yml)
- Pages: [`docs/`](docs/)
- Dependencies: [`requirements.txt`](requirements.txt)

## Run it locally

```bash
pip install -r website/requirements.txt
mkdocs serve -f website/mkdocs.yml      # http://127.0.0.1:8000
```

To produce the same HTML edition the site links to as “Read online,” run the book
build first (needs pandoc):

```bash
bash scripts/build-artifacts.sh         # writes dist/AI_Driven_SDLC_System.html
```

CI does both automatically on every push to `main`.

---

## Why MkDocs Material (and not the others)

The book's **source of truth is a Word document**, not Markdown, so the website's
job is to be a **portal**: a polished landing page, the adoption guides, and links
to the rendered book (HTML/PDF/EPUB) — *not* a generator that consumes per-chapter
Markdown. We evaluated four common options against that reality:

| Generator | Fit for this project | Verdict |
|---|---|---|
| **MkDocs + Material** ✅ | Markdown portal pages, first-class search, excellent theming/accessibility, tiny config, huge ecosystem, trivial Pages deploy. Doesn't need the book to be in Markdown — we host the pandoc-rendered HTML alongside it. | **Chosen** |
| **Docusaurus** | Powerful (React, versioned docs, i18n) but heavier: Node toolchain, more config, more maintenance. Its strengths (MDX, versioning) assume Markdown/MDX content we don't have. | Overkill |
| **Jupyter Book** | Superb for computational/notebook content with executable cells. Our content is a prose textbook, not notebooks. | Wrong tool |
| **mdBook** | Lightweight and great — *if* the book is authored in Markdown. It's designed to render a Markdown book; we don't have one. | Mismatch with `.docx` source |

**Decision:** Material for MkDocs — lowest maintenance, best fit for a
Markdown portal that links to a separately-rendered book, and strong
accessibility/search out of the box.

> If the project later migrates the manuscript to Markdown (a roadmap item), the
> same MkDocs site can render the chapters directly, or we revisit **mdBook**. The
> portal pages here would carry over with minimal change.

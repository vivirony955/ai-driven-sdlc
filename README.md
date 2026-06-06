<!--
  Placeholders used throughout this repository:
    vivirony955          -> your GitHub username or organization
    ai-driven-sdlc -> the repository name (change if you prefer another)
  Run scripts/set-repo-identity.ps1 (Windows) or scripts/set-repo-identity.sh
  to replace every occurrence in one pass.
-->

# An AI-Driven Software Development System

### *A Theoretical Framework for the Modern Software Engineering Lifecycle*

[![License: CC BY 4.0](https://img.shields.io/badge/Content-CC--BY--4.0-lightgrey.svg)](LICENSE)
[![License: MIT](https://img.shields.io/badge/Code-MIT-blue.svg)](LICENSE-CODE)
[![Book version](https://img.shields.io/badge/edition-1.0%20(2026)-success.svg)](CHANGELOG.md)
[![Build book](https://github.com/vivirony955/ai-driven-sdlc/actions/workflows/build-book.yml/badge.svg)](https://github.com/vivirony955/ai-driven-sdlc/actions/workflows/build-book.yml)
[![Website](https://github.com/vivirony955/ai-driven-sdlc/actions/workflows/deploy-website.yml/badge.svg)](https://vivirony955.github.io/ai-driven-sdlc/)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md)
[![PRs welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

> A free, openly-licensed textbook on how to run a modern software development
> lifecycle when capable AI agents are first-class participants in the work.
> Written for engineers, technical leaders, and learners — principles first,
> tools second.

📖 **[Read online](https://vivirony955.github.io/ai-driven-sdlc/)** &nbsp;·&nbsp;
⬇️ **[Download PDF / EPUB](https://github.com/vivirony955/ai-driven-sdlc/releases/latest)** &nbsp;·&nbsp;
🎓 **[Adopt it for a course](website/docs/adopt/educators.md)** &nbsp;·&nbsp;
🤝 **[Contribute](CONTRIBUTING.md)** &nbsp;·&nbsp;
📑 **[Cite this book](CITATION.cff)**

---

## What this book is

Modern language-model agents are good at producing fluent, plausible engineering
output, and not very good at distinguishing correct output from confidently
wrong output. **Both qualities scale together.** The point of an AI-Driven SDLC
is to apply enough engineering discipline *around* the agent that the wrong
outputs get caught and the right ones get used — without leaning on the agent
itself to know the difference.

This is a **textbook, not a manual**. It gives you a vocabulary, a structure, and
a set of operating disciplines that describe what it takes to build
production-grade software with AI agents inside the loop. Examples are drawn from
banking, telemedicine, logistics, game backends, publishing, IoT, fraud
detection, ride-hailing, and more — because the framework is meant to be
*portable*, and the structure stays roughly the same across domains. A single
running case study, **Atlas Learn** (a fictional EdTech company), threads through
the book and the three appendices.

## Who it's for

| Reader | What you'll get | Where to start |
|---|---|---|
| **Senior engineers / tech leads** | Vocabulary and structure to organize an AI-augmented team around | [Reader paths](book/README.md#reader-paths) |
| **Students & early-career engineers** | Principles before tools, on the assumption that tools turn over faster than principles | [Student guide](website/docs/adopt/students.md) |
| **Educators & institutions** | A course-ready text with learning objectives, slides, a test bank, and exercises | [Educator guide](website/docs/adopt/educators.md) |
| **Self-learners** | A linear path plus targeted re-reads | [Self-learner guide](website/docs/adopt/self-learners.md) |
| **Skeptics** | A discipline that takes the failure modes seriously and converts them into engineering problems | The Preface, then Chapter 1 |

## What's inside

- **25 chapters (0–24)** across **six parts**: Foundations · Operating Disciplines · The Agents · Quality Concerns · Operating in the Real World · Frontier & Principles
- **6 "Bridge" chapters** connecting the framework to adjacent disciplines: Requirements Engineering, Architecture Patterns, Data Engineering, Project Planning & Estimation, Ethics & Responsible AI, and Career & Industry Context
- **3 appendices** — full Atlas Learn incident case studies
- **33 slide decks** — one per chapter/bridge/appendix ([`slides/`](slides/))
- **An instructor test bank** — multiple-choice, short-answer, and essay questions with answer keys and learning-objective tags ([`test-bank/`](test-bank/))
- **22 figures** extracted as standalone, reusable assets ([`figures/`](figures/))

See the full [**Table of Contents**](book/TABLE_OF_CONTENTS.md).

## Formats

Every format is rebuilt automatically from the canonical manuscript on each
tagged release (see [Phase&nbsp;7 automation](.github/workflows/)).

| Format | Best for | Get it |
|---|---|---|
| **HTML (online)** | Reading on any device, searching | [Website](https://vivirony955.github.io/ai-driven-sdlc/) |
| **PDF** | Printing, offline, citation | [Latest release](https://github.com/vivirony955/ai-driven-sdlc/releases/latest) |
| **EPUB** | E-readers, phones/tablets | [Latest release](https://github.com/vivirony955/ai-driven-sdlc/releases/latest) |
| **DOCX** | The canonical, editable source | [`book/`](book/) |
| **PPTX** | Lecturing | [`slides/`](slides/) |

## Repository layout

```text
.
├── book/            The manuscript (canonical .docx source) + TOC + reader paths
├── slides/          33 lecture decks (.pptx), one per chapter/bridge/appendix
├── test-bank/       Instructor test bank (.docx) with answer keys
├── figures/         22 figures as standalone PNGs + accessibility registry
├── exercises/       Pointers to in-chapter exercises + a path to contribute new ones
├── solutions/       Home for the companion solutions volume (see its README)
├── examples/        Runnable code examples (MIT-licensed) that accompany the text
├── references/      Curated bibliography and further reading
├── assets/          Cover art, logo, social-preview image
├── website/         MkDocs Material site (the "Read online" portal)
├── releases/        Release notes templates and the release/publishing/maintenance checklists
├── scripts/         Build + maintenance utilities (figure extraction, identity setup, local build)
├── archive/         Frozen v1.0 source bundles and editorial history (not the living source)
└── .github/         Issue/PR templates, CI workflows, funding, CODEOWNERS
```

> **Source-of-truth note.** The canonical, editable source of the book is the
> Word document in [`book/`](book/). The repository is the project's
> distribution, governance, and collaboration home: CI renders the PDF, EPUB, and
> HTML *from* that manuscript on every release. See [`book/README.md`](book/README.md)
> for how to propose changes.

## Quick start

**Read it.** Visit the [website](https://vivirony955.github.io/ai-driven-sdlc/) or grab a
[PDF/EPUB](https://github.com/vivirony955/ai-driven-sdlc/releases/latest).

**Teach with it.** Start with the [educator guide](website/docs/adopt/educators.md):
suggested syllabi, how the slides and test bank line up with chapters, and licensing
for classroom use.

**Build the artifacts locally** (optional — requires [pandoc](https://pandoc.org)
and [LibreOffice](https://www.libreoffice.org)):

```bash
# PDF, EPUB, and HTML into ./dist
bash scripts/build-artifacts.sh        # macOS/Linux
pwsh scripts/build-artifacts.ps1       # Windows
```

**Serve the website locally** (requires Python):

```bash
pip install -r website/requirements.txt
mkdocs serve -f website/mkdocs.yml     # http://127.0.0.1:8000
```

## How to contribute

Errata, clearer explanations, new exercises, figure alt-text, translations — all
welcome. Because the manuscript is a Word file, the contribution flow differs a
little from a code project; the two-minute version:

1. **Spotted a typo or error?** Open an [errata issue](https://github.com/vivirony955/ai-driven-sdlc/issues/new/choose) — quote the chapter and sentence.
2. **Want to improve the text?** Read [CONTRIBUTING.md](CONTRIBUTING.md) for how
   we take prose changes against a `.docx` source (suggested-edit workflow), and
   how code/exercise/figure changes go in as normal pull requests.
3. **First time?** Adding [figure alt-text](figures/FIGURES.md) is the easiest
   way in.

By participating you agree to our [Code of Conduct](CODE_OF_CONDUCT.md).

## License

This project is **dual-licensed** so the words and the code each get the license
that fits them best:

- 📖 **The book, slides, test bank, figures, and other written/visual content** —
  [**Creative Commons Attribution 4.0 International (CC BY 4.0)**](LICENSE).
  Share, adapt, translate, and use in teaching — even commercially — **with
  attribution**.
- 💻 **Code examples, scripts, build configuration, and website source** —
  [**MIT License**](LICENSE-CODE).

See [LICENSE](LICENSE), [LICENSE-CODE](LICENSE-CODE), and the
[How to attribute](#how-to-attribute) note below. When in doubt about which
license applies to a given file, see the *Licensing* section of
[CONTRIBUTING.md](CONTRIBUTING.md).

### How to attribute

> *“An AI-Driven Software Development System: A Theoretical Framework for the
> Modern Software Engineering Lifecycle”* by Vivek Negi, licensed
> under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/). Source:
> https://github.com/vivirony955/ai-driven-sdlc

## Citation

If you reference this book in academic or professional work, please cite it.
GitHub will generate a formatted citation from [CITATION.cff](CITATION.cff) via
the **“Cite this repository”** button, or see [references/CITING.md](references/CITING.md)
for BibTeX/APA/MLA/Chicago forms.

## Accessibility

We treat accessibility as a first-class quality concern. The current status, known
gaps (notably figure alt-text), and how to help are tracked in
[ACCESSIBILITY.md](ACCESSIBILITY.md).

## Project health

- 🗺️ [Roadmap](ROADMAP.md) — what's planned for the second edition
- 🏛️ [Governance](GOVERNANCE.md) — how decisions get made
- 🔐 [Security policy](SECURITY.md) — how to report a problem privately
- 📓 [Changelog](CHANGELOG.md) — what changed, version by version
- 🙏 [Acknowledgements](ACKNOWLEDGEMENTS.md) · 👤 [Authors](AUTHORS.md)

---

<sub>Built as an open educational resource (OER). Content © The AI-Driven SDLC
Authors, CC BY 4.0. Code MIT. Edition 1.0, 2026.</sub>

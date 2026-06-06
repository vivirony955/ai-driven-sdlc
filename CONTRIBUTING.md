# Contributing

Thank you for helping improve **An AI-Driven Software Development System**. This is
an open educational resource, and contributions from engineers, educators,
students, and readers are what keep it accurate and useful.

By participating you agree to abide by our [Code of Conduct](CODE_OF_CONDUCT.md).

## Table of contents

- [Ways to contribute](#ways-to-contribute)
- [Good first contributions](#good-first-contributions)
- [The two contribution tracks](#the-two-contribution-tracks)
- [Editing the manuscript (prose in `.docx`)](#editing-the-manuscript)
- [Editing code, exercises, figures, and the website](#editing-code-exercises-figures-and-the-website)
- [Style & conventions](#style--conventions)
- [Licensing of contributions (DCO)](#licensing-of-contributions)
- [Review process](#review-process)

## Ways to contribute

- **Report errata** — typos, factual errors, broken cross-references, unclear
  sentences.
- **Improve explanations** — sharper wording, better examples.
- **Add accessibility** — alt-text for figures, clearer table descriptions.
- **Contribute exercises, solutions, or runnable code examples.**
- **Curate references** for the further-reading list.
- **Translate** a chapter (open an issue first to coordinate).
- **Improve the tooling** — workflows, scripts, the website.

No contribution is too small. Fixing one typo is a real and welcome contribution.

## Good first contributions

1. **Figure alt-text** — pick any `_TODO_` row in
   [`figures/FIGURES.md`](figures/FIGURES.md) and describe the image. See
   [ACCESSIBILITY.md](ACCESSIBILITY.md) for what makes a good description.
2. **A reference** — add a durable source to
   [`references/bibliography.md`](references/bibliography.md).
3. **An errata issue** — the highest-signal way to improve the prose.

## The two contribution tracks

This project has an unusual shape: the **book's source is a Word document**, while
everything around it (code, exercises, figures' metadata, website, tooling) is
plain text. So there are two tracks:

| Track | What it covers | Mechanism |
|---|---|---|
| **A — Prose** | The manuscript, slides, test bank (all `.docx`/`.pptx`) | Issues + maintainer-applied edits, or attached *Track-Changes* files |
| **B — Everything else** | Code, exercises, solutions, figure alt-text, references, website, CI | Normal pull requests |

### Editing the manuscript

Because `.docx`/`.pptx` are binary, GitHub can't show line-level diffs or merge
them, so we don't take raw binary PRs for prose. Instead:

**For small fixes (preferred):**
1. Open an [errata issue](.github/ISSUE_TEMPLATE/).
2. Quote the **chapter, section, and the exact sentence**, then give the
   correction. Precise quotes let a maintainer find and fix it in minutes.

**For larger prose changes:**
1. Open an issue describing the change and why, and **wait for a maintainer to
   agree** before doing the work (this avoids wasted effort on a binary file only
   maintainers can merge).
2. Provide the change as either:
   - a Word document with **Track Changes** enabled, attached to the issue, or
   - a clear **before → after** block in the issue for each edited passage.
3. A maintainer applies it to the canonical `.docx`, credits you in the commit and
   [AUTHORS.md](AUTHORS.md), and notes it in [CHANGELOG.md](CHANGELOG.md).

> We are evaluating a future move to a plain-text source to enable direct prose
> PRs — see [ROADMAP.md](ROADMAP.md). Input welcome.

### Editing code, exercises, figures, and the website

These are normal pull requests:

1. **Fork** the repo and create a branch: `git switch -c fix/short-description`.
2. Make your change. Keep it focused — one logical change per PR.
3. Run the relevant checks locally if you can (see below).
4. **Open a pull request** using the template; link any related issue.

Local checks (optional but appreciated):

```bash
# Markdown lint
npx markdownlint-cli2 "**/*.md"
# Spell check (config in .cspell.json)
npx cspell "**/*.md"
# Link check
npx linkinator . --recurse --silent
```

These same checks run automatically in CI on every pull request.

## Style & conventions

- **Prose:** clear, concrete, plain English. Match the book's voice — explain the
  *why* before the *how*. Define a term the first time it's used.
- **Spelling:** the manuscript uses a consistent mix; for repository docs prefer
  US English, and add genuine project terms to
  [`.cspell.json`](.cspell.json) rather than disabling the check.
- **Markdown:** ATX headings (`#`), wrap prose around ~90 cols where reasonable,
  relative links between repo files. Linting rules are in
  [`.markdownlint.jsonc`](.markdownlint.jsonc).
- **Figures:** keep alt-text factual and concise; describe what the figure
  *shows and means*, not "an image of…".
- **Commits:** present-tense, imperative summaries
  (`Fix cross-reference in Chapter 12`). [Conventional Commits](https://www.conventionalcommits.org/)
  prefixes (`fix:`, `docs:`, `feat:`) are welcome but not required.
- **Changelog:** add a line under `## [Unreleased]` in
  [CHANGELOG.md](CHANGELOG.md) for any user-visible change.

## Licensing of contributions

By contributing, you agree that your contribution is licensed under the project's
licenses: **content under [CC BY 4.0](LICENSE)** and **code under
[MIT](LICENSE-CODE)** (see [which applies to what](README.md#license)). You confirm
you have the right to contribute the material.

The **MIT** license covers the repository's code: the contents of `examples/` and
`scripts/`, the GitHub Actions workflows and configuration in `.github/`, the
website source in `website/`, and any other source code or configuration files.
Everything else — the manuscript, slides, test bank, figures, and other written or
visual material — is **content** under CC BY 4.0. When a file's nature is
ambiguous, treat prose/visual material as content and source/config as code.

We use the **[Developer Certificate of Origin](https://developercertificate.org/)**.
Sign off each commit with `-s` to certify you wrote the change or have the right to
submit it:

```bash
git commit -s -m "Add alt-text for Figure 7.1"
```

This adds a `Signed-off-by:` line. CI checks for it on code PRs.

## Review process

- A maintainer will review your contribution, usually within the timeframe in
  [GOVERNANCE.md](GOVERNANCE.md).
- Expect questions or requested changes — that's normal and collaborative.
- Once merged, you'll be added to [AUTHORS.md](AUTHORS.md) (if you'd like) and the
  change recorded in [CHANGELOG.md](CHANGELOG.md).

Questions? Open a [discussion or question issue](.github/ISSUE_TEMPLATE/). Thank
you for contributing! 🙏

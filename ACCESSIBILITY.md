# Accessibility

We want this book to be usable by everyone, including readers who use screen
readers, keyboard navigation, magnification, or who need high-contrast or
reflowable text. This file records the **current status**, **known gaps**, and
**how to help**.

> Accessibility is treated as a quality concern, in the same spirit as the book's
> own chapters on quality. It is a work in progress, and contributions here are
> especially valued.

## Current status (v1.0)

| Area | Status | Notes |
|---|---|---|
| **Figure alt-text** | ❌ **Gap** | The source manuscript shipped with **no alt-text** on its figures (verified at audit). Tracked in [`figures/FIGURES.md`](figures/FIGURES.md). |
| **Heading structure** | ✅ Good | Clean `H1→H2→H3` hierarchy; drives the EPUB/HTML navigation and table of contents. |
| **Reflowable formats** | ✅ Provided | EPUB and HTML are reflowable for magnification and small screens; PDF is fixed-layout. |
| **Reading order** | 🟡 Verify | Generated EPUB/HTML reading order should be spot-checked with a screen reader. |
| **Color contrast** | 🟡 Verify | Callouts use color (teal/navy/green/red borders) *and* a text label, so meaning isn't color-only — but contrast ratios should be checked. |
| **Tables** | 🟡 Verify | 14 data tables; confirm header cells are marked up so screen readers announce them. |
| **Link text** | 🟢 Improving | Repo docs use descriptive link text (not "click here"). |

## How to contribute accessibility improvements

### Writing good figure alt-text (easiest first contribution)

Open [`figures/FIGURES.md`](figures/FIGURES.md), pick a row whose **Alt text** is
`_TODO_`, and replace it with a concise description.

**Good alt-text:**
- describes **what the figure shows and what it means** in context, not "image
  of…" or "diagram";
- is **concise** — usually one or two sentences for a diagram;
- conveys the **relationships** a sighted reader would take from it (e.g. "Four
  stacked layers; each layer only calls the one below it");
- spells out any **labels** that carry meaning;
- ends with a period so screen readers pause naturally.

**Example**

> *Figure 4.1 — The four-layer system architecture.*
> **Alt text:** "A stack of four layers — Interface, Orchestration, Agent, and
> Foundation — drawn top to bottom, with arrows showing that each layer calls only
> the layer directly beneath it."

For a complex figure, put a short alt-text in the registry and, if needed, a longer
description in the surrounding prose so the manuscript itself becomes accessible.

### Other ways to help

- **Spot-check the EPUB/HTML** from a [release](releases/) with a screen reader
  (NVDA, VoiceOver, Orca) and file issues for anything confusing.
- **Check color contrast** of the website theme and callouts against
  [WCAG 2.1 AA](https://www.w3.org/WAI/WCAG21/quickref/).
- **Improve table markup** in the manuscript so headers are announced.

## Standards we aim for

- **WCAG 2.1 AA** for the website and HTML edition.
- **EPUB Accessibility 1.1** conventions for the EPUB (semantic headings, alt-text,
  logical reading order).

Found a barrier? Please open an
[accessibility issue](.github/ISSUE_TEMPLATE/) — describe what you were trying to
do, the tool you used, and what got in the way.

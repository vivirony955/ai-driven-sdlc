# Roadmap

How the project is expected to grow. This is a **living document** — dates are
directional, not promises. Have an idea? Open a `Proposal:` issue (see
[GOVERNANCE.md](GOVERNANCE.md)).

Legend: 🟢 ready / in progress · 🟡 planned · 🔵 exploratory · ✅ done

---

## Now — repository launch (v1.0.x)

The first job is turning the finished manuscript into a healthy open project.

- ✅ Professional repository structure, community health files, licensing model
- ✅ Figures extracted as standalone assets + figure registry
- 🟢 **Figure alt-text** — fill the `_TODO_` rows in
  [`figures/FIGURES.md`](figures/FIGURES.md) *(great first issue)*
- 🟢 **License files** — finalize `LICENSE` (CC BY 4.0) and `LICENSE-CODE` (MIT)
- 🟢 **Code of Conduct** — add `CODE_OF_CONDUCT.md`
- 🟢 **Brand assets** — cover, logo, social-preview image in [`assets/`](assets/)
- 🟢 CI: lint, link-check, spell-check, and book/website builds
- 🟡 First tagged release `v1.0.0` with PDF/EPUB/HTML artifacts (see
  [`releases/`](releases/))
- 🔵 Archive a release to **Zenodo** for a citable DOI

## Next — close the v1.0 content gaps (v1.1)

Gaps identified in the [Phase 1 audit](archive/editorial-history/) that don't
require new chapters:

- 🟡 **Solutions volume** — populate [`solutions/`](solutions/) (authors' volume or
  community-written)
- 🟡 **Curated bibliography** — grow [`references/bibliography.md`](references/bibliography.md)
  beyond seed entries
- 🟡 **Supplementary exercises & runnable examples** in [`exercises/`](exercises/)
  and [`examples/`](examples/)
- 🟡 **Accessibility pass** — complete alt-text, verify heading order and reading
  order in generated EPUB/HTML (see [ACCESSIBILITY.md](ACCESSIBILITY.md))
- 🔵 **Plain-text source evaluation** — assess migrating the manuscript to
  Markdown/AsciiDoc to enable direct prose pull requests (the biggest possible
  improvement to the contribution workflow; tracked as a proposal)

## Later — second edition (v2.0)

These are real coverage gaps deferred from the v1.0 editorial review by design;
each is a candidate new section or substantial expansion. (IDs map to the review
log in [`archive/editorial-history/FIX_PROGRESS.md`](archive/editorial-history/FIX_PROGRESS.md).)

| ID | Topic | Why it matters |
|---|---|---|
| R-15 | **User research & product discovery** | Connect the lifecycle to discovering what to build, not just how. |
| R-16 | **Non-engineer team roles** | PMs, designers, data/ops, and leadership in an AI-driven SDLC. |
| R-17 | **Model evaluation as a discipline** | Treat eval with the same rigor as testing. |
| R-18 | **Worked cost–benefit model** | A concrete, reusable model behind the cost-economics chapters. |
| R-19 | **Non-Western examples & cultural context** | Broaden the case base beyond a Western default. |
| R-20 | **Legal & contractual realities** | IP, liability, data-handling, and procurement around AI in the SDLC. |
| R-21 | **Very-small and very-large team cases** | The framework at solo/startup and at org scale. |

## Exploratory / community-driven

- 🔵 **Translations** (open an issue to coordinate a language)
- 🔵 **Instructor-only solutions channel** for graded courses
- 🔵 **Interactive exercises** paired with `examples/`
- 🔵 **`all-contributors`** automation as the contributor base grows

---

### How items move forward

Anyone can pick up a 🟢/🟡 item — comment on (or open) the issue and go. Larger or
🔵 items start as a `Proposal:` issue for discussion. Completed items move to the
[CHANGELOG](CHANGELOG.md) and are checked off here.

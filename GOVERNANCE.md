# Governance

This document describes how decisions are made for the **An AI-Driven Software
Development System** project. It is intentionally lightweight, matching the
project's current size, and is expected to evolve as the community grows
(see [Evolving this model](#evolving-this-model)).

## Project mission

To provide a free, openly-licensed, high-quality textbook and teaching kit on
running a modern software development lifecycle with AI agents in the loop —
principles first, vendor-neutral, and usable by schools, colleges, educators,
students, and self-learners.

## Roles

### Maintainers

Maintainers are responsible for the health of the project. They:

- review and merge contributions,
- apply prose changes to the canonical manuscript,
- triage issues and shepherd releases,
- uphold the [Code of Conduct](CODE_OF_CONDUCT.md) and this governance model.

The current maintainers are listed in [`AUTHORS.md`](AUTHORS.md) and
[`.github/CODEOWNERS`](.github/CODEOWNERS).

**Lead maintainer (BDFL-style tiebreaker):** `Vivek Negi`. The lead has
final say when consensus cannot be reached, and is accountable for the project's
direction. This is a starting structure for a young project, not a permanent
commitment to single-leader governance.

### Contributors

Anyone who submits an accepted issue, pull request, or substantive review. All
contributors are credited (see [AUTHORS.md](AUTHORS.md)).

### Becoming a maintainer

Contributors who show **sustained, high-quality involvement** (typically several
months of merged contributions and helpful reviews) may be invited to become
maintainers by consensus of the existing maintainers. You can also express
interest by opening a discussion. New maintainers are added to
[`AUTHORS.md`](AUTHORS.md) and `CODEOWNERS`.

## How decisions are made

We use **lazy consensus**: proposals proceed unless someone raises a reasoned
objection.

| Decision | Process |
|---|---|
| Typo / errata / small fix | A single maintainer may merge. |
| New exercise / example / reference / alt-text | One maintainer review + approve. |
| Substantive content change (new section, reworked argument) | Open an issue; needs agreement from **two maintainers** (or the lead + one). |
| Tooling / workflow / website change | One maintainer review; two for anything touching releases or security. |
| License, governance, roadmap, or scope change | Public discussion + explicit approval from a **majority of maintainers**; lead breaks ties. |
| Code of Conduct enforcement | Handled per the [CoC](CODE_OF_CONDUCT.md) by maintainers, confidentially. |

Decisions and their rationale are recorded in the relevant issue/PR so the history
is auditable — consistent with the book's own governance principles.

## Proposing significant changes

For anything large (a new chapter, a structural change, a second-edition
direction), open an issue titled **`Proposal: …`** describing:

- the problem or opportunity,
- the proposed change,
- alternatives considered, and
- the impact on readers, educators, and contributors.

Maintainers will discuss in the open and decide per the table above.

## Releases

Releases follow [Semantic Versioning](https://semver.org/) adapted for a book
(see [CHANGELOG.md](CHANGELOG.md) for the scheme) and the checklists in
[`releases/`](releases/). A maintainer acts as **release manager** for each
release.

## Communication

- **Issues** — bugs, errata, proposals, questions.
- **Discussions** (if enabled) — open-ended conversation, ideas, Q&A.
- **Pull requests** — concrete changes.

All project communication is covered by the [Code of Conduct](CODE_OF_CONDUCT.md).

## Code of Conduct

The project follows the [Contributor Covenant](CODE_OF_CONDUCT.md). Maintainers are
responsible for enforcement and will act fairly and confidentially.

## Evolving this model

This model can be amended via the *License/governance* row above: open a
`Proposal:` issue, discuss in the open, and gain majority maintainer approval.
Amendments are recorded in [CHANGELOG.md](CHANGELOG.md).

---

*Inspired by the governance norms documented in the
[GitHub Open Source Guides](https://opensource.guide/), the
[CNCF](https://github.com/cncf/project-template), and the
[OpenSSF](https://openssf.org/) best-practices guidance.*

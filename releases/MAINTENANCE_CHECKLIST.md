# Maintenance checklist (ongoing)

Keeping the project healthy between releases. None of this is heavy; the goal is a
**low-maintenance, welcoming** repository.

## Weekly (≈15 min)

- [ ] Triage new issues: label, ask for missing detail, mark `good first issue`
      where apt.
- [ ] Review open PRs; merge the easy wins (errata, alt-text, references).
- [ ] Skim the scheduled **Link check** issue, if any.

## Monthly (≈30 min)

- [ ] Merge **Dependabot** PRs (Actions + website deps) after CI passes.
- [ ] Batch-apply collected **errata** to the manuscript and note them in
      `CHANGELOG.md`.
- [ ] Check **Insights → Community Standards** is still all-green.
- [ ] Progress on **figure alt-text** — nudge the `accessibility` issues.

## Quarterly (≈1–2 hrs)

- [ ] Decide whether accumulated changes warrant a **PATCH/MINOR** release.
- [ ] Review the [ROADMAP](../ROADMAP.md); move items between Now/Next/Later.
- [ ] Re-read CONTRIBUTING/GOVERNANCE for anything now out of date.
- [ ] Review maintainer roster & permissions (least privilege); invite active
      contributors per [GOVERNANCE](../GOVERNANCE.md).

## Per contribution

- [ ] Thank the contributor; keep review feedback kind and specific (Code of
      Conduct).
- [ ] Ensure DCO sign-off on code PRs.
- [ ] Add them to `AUTHORS.md` (with consent).
- [ ] Confirm a `CHANGELOG.md` line exists for user-visible changes.

## Health signals to watch

- Time-to-first-response on issues/PRs (aim: a few days).
- CI staying green on `main`.
- Stale `good first issue`s (refresh so newcomers always have an entry point).
- Accessibility gap shrinking (alt-text `_TODO_` count in `figures/FIGURES.md`).

## If you need to step back

Open a `Proposal:` issue to recruit or hand off maintainership (see
[GOVERNANCE](../GOVERNANCE.md)). An OER outlives any single maintainer — plan for
succession early.

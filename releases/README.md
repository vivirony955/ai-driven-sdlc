# Releases

How this book ships. Release **artifacts** (PDF/EPUB/HTML, slide bundles, test
bank) are **not committed** to the repo — they are built by CI and attached to
GitHub Releases. This directory holds the **process**: plans, templates, and
checklists.

| File | Use |
|---|---|
| [`RELEASE_PLAN_v1.0.0.md`](RELEASE_PLAN_v1.0.0.md) | The plan for the first public release |
| [`RELEASE_CHECKLIST.md`](RELEASE_CHECKLIST.md) | Run this for **every** release |
| [`PUBLISHING_CHECKLIST.md`](PUBLISHING_CHECKLIST.md) | One-time: take the repo public + repo settings |
| [`MAINTENANCE_CHECKLIST.md`](MAINTENANCE_CHECKLIST.md) | Keep the project healthy between releases |
| [`RELEASE_NOTES_TEMPLATE.md`](RELEASE_NOTES_TEMPLATE.md) | Skeleton for the GitHub Release body |

## Versioning

Book-adapted [Semantic Versioning](https://semver.org/) — see the scheme at the top
of [`../CHANGELOG.md`](../CHANGELOG.md). In short: **MAJOR** = new edition,
**MINOR** = substantive additions, **PATCH** = errata/fixes.

## How a release happens

1. Finish the [RELEASE_CHECKLIST](RELEASE_CHECKLIST.md) (changelog, version bumps,
   green CI).
2. Tag it: `git tag v1.2.0 && git push origin v1.2.0`.
3. The [`release` workflow](../.github/workflows/release.yml) builds every format
   and publishes the GitHub Release with the artifacts attached.
4. (Optional) Archive to Zenodo for a DOI and update `CITATION.cff`.

That's it — tagging is the trigger; nothing is built by hand.

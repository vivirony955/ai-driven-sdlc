# Release plan — v1.0.0 (first public edition)

The goal of `v1.0.0` is to **publish the finished book as a healthy open project** —
not to add content. The manuscript, slides, and test bank are done and reviewed;
this release is about packaging, licensing, and going public cleanly.

## Scope

**In scope**
- The reviewed v1.0 manuscript, 33 slide decks, and instructor test bank.
- Repository scaffolding, community files, CI, and the website.
- Downloadable PDF/EPUB/HTML built by CI.

**Explicitly out of scope** (deferred — see [ROADMAP](../ROADMAP.md))
- Second-edition content (review items R-15…R-21).
- The companion solutions volume.
- Complete figure alt-text (started; finished post-1.0 as a `1.0.x`).
- Plain-text source migration.

## Pre-conditions (must be done before tagging)

These are the items deliberately **deferred** during scaffolding:

- [ ] `LICENSE` (CC BY 4.0) and `LICENSE-CODE` (MIT) added.
- [ ] `CODE_OF_CONDUCT.md` (Contributor Covenant) added.
- [ ] `vivirony955` / repo / `Vivek Negi` / `<<CONTACT_EMAIL>>` placeholders
      replaced (`scripts/set-repo-identity`).
- [ ] Author name(s) confirmed in `CITATION.cff` and `AUTHORS.md`.
- [ ] [PUBLISHING_CHECKLIST](PUBLISHING_CHECKLIST.md) completed (repo created,
      settings, Pages, branch protection).

## Timeline (suggested)

| Step | Owner | Notes |
|---|---|---|
| T-7d | Lead | Finalize license + CoC; set identity; confirm author metadata |
| T-5d | Lead | Push to GitHub (private), run all workflows, fix any CI issues |
| T-3d | Lead | Apply repo settings + branch protection; verify website deploys |
| T-2d | Lead | Build + proof the PDF/EPUB/HTML from a `Build book` run |
| T-1d | Lead | Make repo **public**; final Community-Standards check |
| T-0  | Lead | `git tag v1.0.0 && git push origin v1.0.0` → release workflow publishes artifacts |
| T+1d | Lead | (Optional) Zenodo DOI; announce; open fresh `[Unreleased]` |

## Definition of done

- [ ] Repo is public; Community Standards all green.
- [ ] `v1.0.0` GitHub Release exists with PDF, EPUB, HTML, slide bundles, test bank.
- [ ] Website is live and "Read online" works.
- [ ] `CHANGELOG.md` has a dated `1.0.0` section; `CITATION.cff` says `1.0.0`.
- [ ] All CI checks green on `main`.

## Risks & mitigations

| Risk | Mitigation |
|---|---|
| LibreOffice PDF differs from the Word original | Proof the CI PDF before tagging; adjust the manuscript, not the pipeline |
| pandoc EPUB/HTML loses a callout's styling | Acceptable for reflowable formats; PDF remains the faithful edition |
| Placeholder URLs leak into the release | `set-repo-identity` + remove the `vivirony955` lines from `.lycheeignore` and re-run link check |
| Accessibility gap (alt-text) noticed at launch | Ship 1.0 with `ACCESSIBILITY.md` being honest about it; fast-follow `1.0.1` |
| Solo-maintainer bottleneck | Mark `good first issue`s; recruit per GOVERNANCE |

See the per-release steps in [RELEASE_CHECKLIST](RELEASE_CHECKLIST.md).

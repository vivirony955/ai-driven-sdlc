# Release checklist (every release)

Run through this for each tagged release. Copy it into the release-tracking issue
and tick as you go.

## 1. Decide the version

- [ ] Choose `vMAJOR.MINOR.PATCH` per the [scheme](../CHANGELOG.md)
      (edition / additions / fixes).

## 2. Content & metadata

- [ ] All issues slated for this release are closed or moved.
- [ ] `CHANGELOG.md`: move items from **[Unreleased]** into a new dated
      `## [x.y.z] — YYYY-MM-DD` section; add the compare/link references at the
      bottom.
- [ ] `CITATION.cff`: bump `version:` and `date-released:`.
- [ ] If the manuscript changed: re-run `python scripts/extract_figures.py` and
      commit any new/changed figures + registry rows.
- [ ] Version/edition string on the manuscript title page matches the tag.

## 3. Quality gates (all green on `main`)

- [ ] **Markdown lint** ✅
- [ ] **Spell check** ✅
- [ ] **Link check** ✅
- [ ] **Build book** ✅ (download the run's artifacts and eyeball the PDF/EPUB/HTML)
- [ ] **Deploy website** ✅ (site renders, "Read online" works)
- [ ] Accessibility spot-check on the EPUB/HTML (headings, alt-text progress).

## 4. Tag and publish

- [ ] Commit the version bumps:
      `git commit -s -m "Release vX.Y.Z"`
- [ ] Tag and push:
      ```bash
      git tag vX.Y.Z
      git push origin main --follow-tags
      ```
- [ ] The **Release** workflow runs and creates the GitHub Release with PDF, EPUB,
      HTML, slide bundles, and the test bank attached.
- [ ] Edit the release body from
      [`RELEASE_NOTES_TEMPLATE.md`](RELEASE_NOTES_TEMPLATE.md) (or accept the
      auto-generated notes + the workflow's preamble).

## 5. After publishing

- [ ] Verify every artifact downloads and opens.
- [ ] (Optional) Archive to **Zenodo** → copy the DOI into `CITATION.cff` and the
      README badge.
- [ ] Open a fresh **[Unreleased]** section in `CHANGELOG.md`.
- [ ] Announce (Discussions, relevant communities); thank contributors in
      `AUTHORS.md`.
- [ ] Close the release-tracking issue.

## Rollback

If a published artifact is broken:

- [ ] Mark the GitHub Release as **pre-release** or delete the assets.
- [ ] Fix forward with a **PATCH** release (preferred over rewriting a tag).
- [ ] Note the problem and the fix in `CHANGELOG.md`.

# Publishing checklist (one-time: take the repo public)

Everything you do **once** to turn this local repository into a healthy public
GitHub project. Per-edition steps are in [RELEASE_CHECKLIST.md](RELEASE_CHECKLIST.md).

> This file also contains the recommended **repository settings** (Phase 6):
> description, topics, About, social preview, branch protection, and permissions.

## 0. Before you push

- [x] **Repository identity set** to `vivirony955/ai-driven-sdlc`. *(To re-point a
      fork elsewhere, run `pwsh scripts/set-repo-identity.ps1 -Owner <handle> -Repo <name>`.)*
- [x] **License files added**: `LICENSE` (CC BY 4.0) + `LICENSE-CODE` (MIT), and
      `CODE_OF_CONDUCT.md` (Contributor Covenant).
- [ ] Set the `<<CONTACT_EMAIL>>` placeholder in `SECURITY.md` / `CODE_OF_CONDUCT.md`
      (or rely on GitHub private vulnerability reporting and remove the line).
- [ ] Confirm nothing private/secret is committed (the repo has no secrets by
      design; `git secrets`/`gitleaks` scan optional).

## 1. Create and push the repository

```bash
git init
git add .
git commit -s -m "Initial public release of the AI-Driven SDLC open book"
git branch -M main
git remote add origin https://github.com/<your-handle>/ai-driven-sdlc.git
git push -u origin main
```

> Tip: `archive/source-bundles/*.zip` is git-ignored on purpose (large redundant
> binary). Verify with `git status` before the first commit.

## 2. About / description / topics (Phase 6)

In **Settings → General** and the repo's **About** panel (the gear on the repo
home page):

- **Description** (≤ 350 chars, paste this):
  > A free, openly-licensed textbook on running a modern software development
  > lifecycle with AI agents in the loop — principles first, vendor-neutral.
  > Includes slides, an instructor test bank, exercises, and figures. CC BY 4.0.

- **Website:** `https://<your-handle>.github.io/ai-driven-sdlc/`

- **Topics / tags** (add these):
  `software-engineering`, `sdlc`, `artificial-intelligence`, `ai-agents`,
  `llm`, `prompt-engineering`, `ai-governance`, `mlops`, `textbook`,
  `open-educational-resources`, `oer`, `education`, `teaching-materials`,
  `computer-science`, `book`, `creative-commons`

- **About checkboxes:** enable **Releases** and **Packages**? (Releases: yes;
  Packages: no.) Show **Deployments** once Pages is live.

## 3. Social preview image

- [ ] Add `assets/social-preview.png` (**1280×640**), then
      **Settings → General → Social preview → Edit** and upload it. Until then,
      GitHub auto-generates a card.

## 4. Features

In **Settings → General → Features**:

- [ ] **Issues** — on (required; templates already provided).
- [ ] **Discussions** — on (the issue-template config and several docs link to it).
- [ ] **Wikis** — off (docs live in the repo/site).
- [ ] **Projects** — optional (handy for the roadmap).
- [ ] **Preserve this repository** (Arctic Code Vault / archive) — optional.

## 5. GitHub Pages (website)

- [ ] **Settings → Pages → Build and deployment → Source = "GitHub Actions"**.
- [ ] Push to `main` (or run the **Deploy website** workflow) and confirm the site
      publishes at the URL above. (The workflow has the needed `pages`/`id-token`
      permissions.)

## 6. Branch protection (Settings → Branches → Add rule, branch `main`)

Recommended for a maintained book repo:

- [ ] **Require a pull request before merging** — yes.
  - [ ] Require **1 approval** (raise to 2 once you have ≥2 maintainers; see
        GOVERNANCE.md).
  - [ ] **Dismiss stale approvals** on new commits.
  - [ ] **Require review from Code Owners** (CODEOWNERS is provided).
- [ ] **Require status checks to pass** — select: `Markdown lint`, `Spell check`,
      `Link check`, `Build book`. (They appear in the list after they've run once.)
- [ ] **Require branches to be up to date** before merging.
- [ ] **Require conversation resolution** before merging.
- [ ] **Require signed commits** — optional but encouraged (pairs with the DCO).
- [ ] **Do not allow bypassing** the above (even for admins) once the team is set.
- [ ] **Restrict force pushes & deletions** of `main`.

> Solo maintainer for now? You can relax "require approval" (or allow admin
> bypass) until a second maintainer joins — but keep the status checks required.

## 7. Tag protection & environments

- [ ] **Settings → Tags → New rule:** protect `v*` so only maintainers can create
      release tags.
- [ ] The **Deploy website** workflow uses the `github-pages` environment
      (created automatically); optionally add required reviewers to it.

## 8. Collaborator / maintainer permissions (Settings → Collaborators and teams)

Use least privilege:

| Role | GitHub permission | Who |
|---|---|---|
| Contributor | (none — forks + PRs) | everyone |
| Triager | **Triage** | trusted helpers who label/triage issues |
| Maintainer | **Maintain** | merges PRs, manages issues/releases (not settings) |
| Admin | **Admin** | the lead maintainer only |

Prefer a **team** (`@<org>/maintainers`) over individual grants if this lives in an
org; update `.github/CODEOWNERS` to match.

## 9. Code security (Settings → Code security and analysis)

- [ ] **Private vulnerability reporting** — enable (SECURITY.md points to it).
- [ ] **Dependabot alerts** + **security updates** — enable (config provided).
- [ ] **Secret scanning** + **push protection** — enable.

## 10. Community Standards

- [ ] Check **Insights → Community Standards** — aim for all green (README,
      CoC, CONTRIBUTING, LICENSE, issue + PR templates, SECURITY). The only items
      pending are the deferred `LICENSE`/`CODE_OF_CONDUCT.md`.

## 11. Discoverability (optional but recommended)

- [ ] Archive a release to **Zenodo** for a citable **DOI**; add it to
      `CITATION.cff` and the README badge row.
- [ ] List the book on OER directories (e.g. OER Commons, MERLOT) once stable.
- [ ] Announce in relevant communities; add adopters to the README with permission.

---

When every box above is checked, run the [RELEASE_CHECKLIST](RELEASE_CHECKLIST.md)
to cut `v1.0.0`.

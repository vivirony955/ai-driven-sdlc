# Scripts

Maintenance and build utilities. All scripts are [MIT-licensed](../LICENSE-CODE)
and written to be run from the **repository root**.

| Script | Purpose | Needs |
|---|---|---|
| [`extract_figures.py`](extract_figures.py) | Pull figures out of the manuscript into [`../figures/`](../figures/) and rebuild the registry | Python + `python-docx` |
| [`set-repo-identity.ps1`](set-repo-identity.ps1) / [`.sh`](set-repo-identity.sh) | Replace the `vivirony955`/repo/contact placeholders everywhere in one pass | PowerShell **or** Bash |
| [`build-artifacts.ps1`](build-artifacts.ps1) / [`.sh`](build-artifacts.sh) | Build PDF + EPUB + HTML locally into `./dist` | pandoc, LibreOffice |

## Typical first run

```bash
# 1. Point the repo at your GitHub identity (run ONE of these)
pwsh scripts/set-repo-identity.ps1 -Owner your-handle -Repo ai-driven-sdlc
bash scripts/set-repo-identity.sh  your-handle ai-driven-sdlc

# 2. (Optional) build the downloadable artifacts locally
bash scripts/build-artifacts.sh
```

> CI builds the same artifacts on every release, so installing pandoc/LibreOffice
> locally is optional — it's only for previewing before you tag a release.

## Conventions

- Scripts assume the working directory is the repo root and use paths relative to
  it.
- They are idempotent where practical (safe to re-run).
- Keep new scripts cross-platform (provide both `.sh` and `.ps1`) or clearly note
  the supported platform at the top of the file.

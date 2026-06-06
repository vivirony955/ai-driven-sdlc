# Security Policy

This is a book project, not a deployed service, so "security" here is narrower than
for a typical software repository — but it still matters. This policy covers the
**code examples, scripts, build workflows, and website** in this repository, plus
the integrity of the published artifacts.

## What counts as a security issue

Please report privately (not in a public issue) anything like:

- A vulnerability in **example code or scripts** that would harm someone who runs
  it as written (e.g. a command-injection or unsafe-deserialization pattern shown
  without a clear warning).
- A problem in the **GitHub Actions workflows** (e.g. script injection, token
  over-permissioning, a supply-chain risk in a pinned action).
- A compromised or tampered **release artifact** (PDF/EPUB/HTML), or a way to
  publish one.
- A vulnerability in the **website** build or dependencies that affects readers.
- Exposure of secrets or credentials anywhere in the repository or its history.

For **factual errors, typos, or "this advice is wrong"** in the *book's content*,
please use a normal [errata issue](.github/ISSUE_TEMPLATE/) instead — that's not a
security matter.

## How to report

**Preferred: GitHub Private Vulnerability Reporting.**
Go to the repository's **Security** tab → **Report a vulnerability**. This opens a
private advisory visible only to maintainers. (Maintainers: enable this under
*Settings → Code security and analysis → Private vulnerability reporting*.)

**Alternative: email** `<<CONTACT_EMAIL>>` *(maintainers: set this to a monitored
address — a dedicated alias is strongly preferred over a personal email).*

Please include:
- where the issue is (file/workflow/release and version),
- what an attacker could do,
- steps to reproduce, and
- any suggested fix.

**Please do not** open a public issue, PR, or discussion for a security report
until a fix is released.

## Our commitment

- **Acknowledge** your report within **5 business days**.
- Provide an **assessment and plan** within **10 business days**.
- Keep you updated and **credit you** in the fix and release notes (unless you
  prefer to remain anonymous).
- Aim to ship a fix for confirmed issues within **30 days**, sooner for severe
  ones.

## Supported versions

As an open educational resource, security-relevant fixes are applied to the
**latest released edition** and `main`. Older editions are not patched; please use
the latest.

| Version | Supported |
|---|---|
| Latest release / `main` | ✅ |
| Older editions | ❌ |

## Scope notes

- Vulnerabilities in **third-party tools** (pandoc, LibreOffice, MkDocs,
  GitHub Actions) should be reported to those projects; tell us too if our usage
  makes them exploitable here.
- We follow **coordinated disclosure** and ask the same of reporters.

Thank you for helping keep readers and contributors safe.

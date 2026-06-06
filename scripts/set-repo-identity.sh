#!/usr/bin/env bash
# Replace the placeholder repository identity across all text files.
#
# Placeholders rewritten:
#   OWNER               -> your GitHub username or organization
#   ai-driven-sdlc      -> the repository name
#   <<MAINTAINER NAME>> -> the lead maintainer's name (optional)
#   <<CONTACT_EMAIL>>   -> a contact / security email (optional)
#
# Usage:
#   scripts/set-repo-identity.sh <owner> [repo] [maintainer] [email]
# Examples:
#   scripts/set-repo-identity.sh acme-edu
#   scripts/set-repo-identity.sh jdoe sdlc-book "Jane Doe" security@example.org
#
# Safe to re-run. Only rewrites text files; never touches binaries.
set -euo pipefail

OWNER="${1:?usage: set-repo-identity.sh <owner> [repo] [maintainer] [email]}"
REPO="${2:-ai-driven-sdlc}"
MAINT="${3:-}"
EMAIL="${4:-}"

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

# Files to consider (text only), excluding VCS/build dirs and binaries.
mapfile -t FILES < <(find . \
  \( -path ./.git -o -path ./dist -o -path ./site -o -path ./node_modules \) -prune -o \
  -type f \( -name '*.md' -o -name '*.yml' -o -name '*.yaml' -o -name '*.cff' \
           -o -name '*.toml' -o -name '*.json' -o -name '*.jsonc' -o -name '*.txt' \
           -o -name '*.html' -o -name '*.cfg' -o -name '*.ini' -o -name '*.ps1' \
           -o -name '*.sh' -o -name '*.py' -o -name '*.css' \) -print)

sed_i() { # portable in-place sed (GNU vs BSD)
  if sed --version >/dev/null 2>&1; then sed -i "$@"; else sed -i '' "$@"; fi
}

changed=0
for f in "${FILES[@]}"; do
  before="$(cat "$f")"
  sed_i "s#OWNER/ai-driven-sdlc#${OWNER}/${REPO}#g; \
         s#OWNER\.github\.io/ai-driven-sdlc#${OWNER}.github.io/${REPO}#g" "$f"
  if [ "$REPO" != "ai-driven-sdlc" ]; then sed_i "s#ai-driven-sdlc#${REPO}#g" "$f"; fi
  sed_i "s#OWNER#${OWNER}#g" "$f"
  [ -n "$MAINT" ] && sed_i "s#<<MAINTAINER NAME>>#${MAINT}#g" "$f" || true
  [ -n "$EMAIL" ] && sed_i "s#<<CONTACT_EMAIL>>#${EMAIL}#g" "$f" || true
  if [ "$before" != "$(cat "$f")" ]; then echo "updated: ${f#./}"; changed=$((changed+1)); fi
done

echo
echo "Done. ${changed} file(s) updated -> ${OWNER}/${REPO}"
[ -z "$MAINT" ] && echo "note: <<MAINTAINER NAME>> left as-is (pass arg 3 to set it)."
[ -z "$EMAIL" ] && echo "note: <<CONTACT_EMAIL>> left as-is (pass arg 4 to set it)."

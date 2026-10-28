#!/usr/bin/env bash
# scripts/check-availability.sh — first-pass availability check for name candidates.
# Used by the naming skill's Stage 4 Collision screen, mainly for OSS / tech-type objects.
# Usage:   ./check-availability.sh <candidate> [candidate2 ...]
# Checks:  npm package, PyPI package, GitHub repo-name search, DNS resolution for
#          .com / .io / .app domains.
# All checks are public unauthenticated lookups. This is a FIRST PASS, never a
# trademark or domain-registration verdict — registry and trademark human checks
# remain mandatory.

set -uo pipefail

for name in "$@"; do
  slug=$(echo "$name" | tr '[:upper:]' '[:lower:]' | tr -d ' -_')
  echo "=== ${name}  (checking as: ${slug}) ==="

  code=$(curl -s -o /dev/null -w '%{http_code}' --max-time 10 "https://registry.npmjs.org/${slug}")
  [ "$code" = "404" ] && echo "  npm:    no package found (likely free)" \
                      || echo "  npm:    taken or unreachable (HTTP ${code})"

  code=$(curl -s -o /dev/null -w '%{http_code}' --max-time 10 "https://pypi.org/pypi/${slug}/json")
  [ "$code" = "404" ] && echo "  PyPI:   no package found (likely free)" \
                      || echo "  PyPI:   taken or unreachable (HTTP ${code})"

  count=$(curl -s --max-time 10 -H "Accept: application/vnd.github+json" \
        "https://api.github.com/search/repositories?q=${slug}+in:name&per_page=1" \
        | grep -o '"total_count": *[0-9]*' | head -1 | grep -o '[0-9]*$')
  echo "  GitHub: ${count:-?} repo(s) match this name"

  for tld in com io app; do
    ans=$(dig +short "${slug}.${tld}" 2>/dev/null | head -1)
    if [ -n "$ans" ]; then
      echo "  ${slug}.${tld}: resolves (${ans}) — in use"
    else
      echo "  ${slug}.${tld}: no DNS answer — unregistered or parked, verify before buying"
    fi
  done
  echo ""
done

#!/usr/bin/env bash
set -euo pipefail

if command -v npm >/dev/null 2>&1 && [ -f apps/frontend/package.json ]; then
  npm --prefix apps/frontend run typecheck
  npm --prefix apps/frontend run lint
fi

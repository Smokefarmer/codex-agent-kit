#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CODEX_HOME="${CODEX_HOME:-$HOME/.codex}"
SKILLS_DIR="$CODEX_HOME/skills"

mkdir -p "$SKILLS_DIR"
cp -R "$ROOT_DIR/skills/frontend-application-builder" "$SKILLS_DIR/"
cp -R "$ROOT_DIR/skills/grill-me" "$SKILLS_DIR/"
cp -R "$ROOT_DIR/skills/spec-architect" "$SKILLS_DIR/"

cat <<'MSG'
Installed:
  ~/.codex/skills/frontend-application-builder
  ~/.codex/skills/grill-me
  ~/.codex/skills/spec-architect

Optional shadcn MCP config for ~/.codex/config.toml:

[mcp_servers.shadcn]
command = "npx"
args = ["shadcn@latest", "mcp"]

Restart Codex after changing skills or MCP config.
MSG

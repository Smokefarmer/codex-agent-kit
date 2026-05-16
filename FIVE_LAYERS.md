# Five-Layer Codex Kit

This maps the Claude-style agent development kit from the screenshots to a Codex-friendly setup.

## Layer 1: Memory

Status: ready.

Codex equivalents:

- Global memory: `~/.codex/skills/` plus personal Codex instructions/config.
- Project memory: `AGENTS.md`, `PRODUCT.md`, `DESIGN.md`, `docs/codex/*`.

This kit provides templates in `templates/`.

## Layer 2: Skills

Status: ready and installed locally.

Codex equivalents:

- Global reusable skills: `~/.codex/skills/<skill-name>/SKILL.md`.
- Project overlay skills: `.agents/skills/<project-skill>/SKILL.md` or app-level `.agents/skills/*`.

This kit provides `skills/frontend-application-builder`.

## Layer 3: Hooks

Status: adapter ready.

Claude-style `PreToolUse.sh`, `PostToolUse.sh`, and `SessionStart.sh` are not a portable Codex file convention today. Use deterministic guardrails through:

- Git hooks for local repository checks.
- CI checks for team-level enforcement.
- Repo instructions in `AGENTS.md` for tool behavior and destructive-command safety.
- Codex verification commands captured in `docs/codex/*`.

This kit provides hook templates in `hooks/`.

## Layer 4: Subagents

Status: ready as operating pattern.

Codex equivalents:

- Built-in subagent delegation when available: explorer, worker, default.
- Project instructions should define when to delegate research, implementation, and verification.

This kit provides role prompts in `subagents/` as reusable delegation contracts. They are guidance files, not automatically loaded agent definitions.

## Layer 5: Plugins

Status: distribution plan ready.

Codex equivalents:

- Public GitHub repository containing this kit.
- Local install script for global skills.
- Optional Codex plugin packaging later if you want one-click install for a team.

This kit provides `install.sh` and a public-safe folder layout.

## Recommended Project Stack

Use all five layers like this:

1. Memory: `AGENTS.md`, `PRODUCT.md`, `DESIGN.md`, `docs/codex/*`.
2. Skills: global `frontend-application-builder` plus any private project-specific skill.
3. Hooks: repo verification commands, git/CI hooks, and strict AGENTS safety rails.
4. Subagents: use Codex explorer/worker subagents for parallel codebase research and bounded implementation.
5. Plugins/distribution: publish `codex-kit/` publicly and reinstall on each machine.

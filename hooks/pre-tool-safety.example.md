# Pre-Tool Safety Guardrail

Codex does not currently load this file as an automatic hook. Use it as a policy template for `AGENTS.md`, shell aliases, or future hook/plugin packaging.

Block or require explicit approval for:

- `git reset --hard`
- `git checkout -- <path>`
- `rm -rf`
- deleting migrations, production data, or generated customer artifacts
- commands that write outside the workspace

Prefer:

- inspect first with `git status`, `git diff`, and `rg`
- patch small files with `apply_patch`
- run focused verification before broad checks

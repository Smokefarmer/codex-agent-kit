# Setup

Use this skill globally when you want the same frontend behavior in every Codex session.

## Install

Copy the skill folder to:

```bash
~/.codex/skills/frontend-application-builder
```

Then restart Codex.

## shadcn MCP

Generic config:

```toml
[mcp_servers.shadcn]
command = "npx"
args = ["shadcn@latest", "mcp"]
```

If the machine uses WSL or an old default Node, point `command` and `args` at a modern Node/NPM installation instead.

## Project Overlay

For each serious project, keep project memory in the repo:

- `AGENTS.md`: constitution, stack, workflow, safety rails.
- `PRODUCT.md`: users, value, terminology, workflows.
- `DESIGN.md`: visual register, tokens, components, UX rules.
- `.agents/skills/<project-skill>/`: private project skill when the domain is large.

The generic skill supplies method. The project overlay supplies taste and truth.

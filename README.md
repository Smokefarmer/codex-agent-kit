# Codex Agent Kit

Portable Codex setup for reusable agent work: memory, skills, guardrails, delegation contracts, and distribution. It includes frontend application and grill-me skills today, but the five-layer setup is useful for any serious Codex workflow.

This folder is public-safe by design. It should not contain private product docs, customer data, screenshots, schemas, or company-specific business logic.

## Folder Model

Use five durable folders/files:

1. Memory - `AGENTS.md`, `PRODUCT.md`, `DESIGN.md`, and `docs/codex/*`.
2. Skills - `skills/` and global `~/.codex/skills`.
3. Hooks - `hooks/` templates plus git/CI/Codex safety rules.
4. Subagents - `subagents/` delegation contracts.
5. Plugins - `install.sh`, optional plugin packaging, and public GitHub distribution.

See `FIVE_LAYERS.md` for the full Claude-to-Codex mapping.

## Install Locally

From this folder:

```bash
bash install.sh
```

Restart Codex after installing skills or editing MCP config.

## Recommended Split

- Put this kit in a public GitHub repo for reusable Codex operating method.
- Keep project-specific overlays inside the private project repo.
- Mirror private project skills to `~/.codex/skills` only on machines where you work on that project.

## Update Flow

1. Improve the generic skill only when a rule applies across projects.
2. Improve a project overlay when the rule depends on a product, domain, API, or brand.
3. Commit and push the public kit so laptops can reinstall from GitHub.
4. Restart Codex after changing global skills.

---
name: frontend-application-builder
description: "Use for building, redesigning, polishing, or reviewing real frontend application workflows with React, Vite, Next.js, Tailwind, shadcn/ui, Radix, design systems, API-backed state, responsive behavior, accessibility, and production-quality end-to-end UX."
---

# Frontend Application Builder

Use this as the default portable frontend skill for application work. It is intentionally product-agnostic so it can live in a public GitHub repo and be reused across laptops and projects.

## First Read

Before changing frontend code, read the local project memory if it exists:

- `AGENTS.md` for repo rules and working agreements.
- `PRODUCT.md` for product posture, users, workflows, and business constraints.
- `DESIGN.md` for visual language, tokens, components, and UX rules.
- Existing route, layout, hook, API client, and test files for the screen.

For full slices, read `references/full-slice-workflow.md`.
For audits and polish, read `references/quality-gates.md`.
For skill/tool selection, read `references/skill-stack.md`.
For install and portability, read `references/setup.md`.

## Product Posture

Build the actual application workflow first, not a marketing page or decorative mock. Good application UI is calm, specific, fast to scan, and honest about state.

Prefer:

- Real business data and API contracts over placeholder metrics.
- Existing layout, tokens, and component primitives over one-off styling.
- Dense but organized work surfaces for operational products.
- Explicit roles, permissions, empty states, errors, and success paths.
- German or local product copy when the existing app uses it.

Avoid:

- Fake stats, fake workflows, and UI that implies unsupported backend behavior.
- Raw hex colors or single-use palettes in product screens.
- Nested cards, oversized hero typography inside tools, and decorative dashboard theatrics.
- Page copy that explains implementation details or how to use obvious controls.

## Workflow

1. Reconstruct the user workflow from the route, page, hooks, API client, and existing tests.
2. Identify roles, permissions, scope, and record lifecycle states.
3. Decide the contract boundary before layout work. Pages compose; hooks/API clients fetch.
4. Sketch the screen structure in prose if the change affects navigation, layout, or hierarchy.
5. Implement with existing primitives first. Add abstractions only when repetition or clarity justifies it.
6. Cover loading, empty, error, denied, submitting, success, archived/final, and mobile states.
7. Verify type safety, lint, focused tests, and build for broad UI infrastructure.
8. Capture durable lessons in project memory when a correction reveals a repeatable rule.

## Design Rules

- Use semantic design tokens (`background`, `foreground`, `card`, `muted`, `primary`, `border`, `destructive`, `success`, `warning`) before raw colors.
- Use icons from the existing icon library for icon buttons and compact actions.
- Use tables, split panes, drawers, side rails, segmented controls, filters, and compact status clusters for workflow-heavy screens.
- Use cards only for repeated items, dialogs, and genuinely framed tools.
- Keep app shell chrome stable. The page should carry the work.
- Prevent horizontal overflow and text clipping on mobile and desktop.
- Prefer tabular figures for money, dates, counts, IDs, and periods.

## Done Means

- The screen supports the real workflow and expected states.
- The implementation follows local component, hook, API, and route boundaries.
- The visual result fits the app's existing product language.
- Verification was run, or a concrete blocker is recorded.
- Public reusable improvements belong in this skill kit; project-specific rules belong in that repo's `AGENTS.md`, `PRODUCT.md`, `DESIGN.md`, or private overlay skill.

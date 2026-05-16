# Full Slice Workflow

Use this when a frontend request needs real application behavior, not just a visual pass.

## Trace The Contract

- Start from the route and page.
- Find the hook, API client, schema/types, and backend controller if present.
- Keep fetch logic out of pages unless the local project already does otherwise.
- If backend behavior is missing, isolate the intended contract behind an adapter instead of hardcoding mock arrays in UI.

## Role And Permission Map

Identify:

- Who can see the route.
- Which actions are gated by permissions.
- Which tenant, organization, workspace, account, or project scope is active.
- What happens for missing scope, missing permission, archived records, final records, or completed workflows.

The frontend reflects authorization but never becomes the security boundary.

## State Matrix

Account for:

- Initial loading.
- Empty but healthy.
- Error with retry or recovery.
- Permission denied or wrong scope.
- In-flight mutation.
- Successful mutation and cache update.
- Background refresh after mutation.
- Archived, final, immutable, or deleted records.

## Component Boundaries

- Pages compose the workflow.
- Feature components own workflow UI and local view state.
- Shared primitives stay in shared UI directories.
- API calls go through hooks/API clients.
- Extract large JSX before it becomes hard to test.

## Verification

Run the strongest practical subset:

```bash
npm run typecheck
npm run lint
npm run test -- <focused-pattern>
npm run build
```

Use workspace-specific commands when the repo has app packages, for example `npm --prefix apps/frontend run typecheck`.

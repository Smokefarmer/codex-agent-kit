# Quality Gates

Use this for UI audits, polish passes, and final review before calling work done.

## UX

- Is the primary action obvious without explanatory prose?
- Is the page organized around the user's job, not the database tables?
- Are empty and error states useful and truthful?
- Are destructive actions reversible, confirmed, or clearly scoped?
- Does the page avoid duplicate controls that compete with each other?

## Visual

- Does the screen match the existing shell, surfaces, spacing, typography, and radius?
- Are colors semantic and theme-aware?
- Does the layout avoid nested cards and decorative clutter?
- Are tables, filters, status chips, buttons, and inputs stable under long German copy?
- Are important numbers aligned and easy to compare?

## Technical

- Are API boundaries typed?
- Are permissions reflected in the UI?
- Are mutations invalidating or updating the right cache entries?
- Is there no `any` unless the local project explicitly allows it?
- Are loading and disabled states preventing double submit?

## Responsive And Accessibility

- No horizontal overflow.
- Button text and labels do not clip.
- Keyboard focus is visible.
- Icon-only controls have accessible names or tooltips.
- Dialogs and drawers keep action rows reachable on small screens.

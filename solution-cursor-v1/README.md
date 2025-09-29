# solution-cursor-v1

Spec-Driven Development (SDD) kit workspace used for Cursor-driven workflows. This folder contains a curated `sdd-kit` plus references to other kits for cross-pollination.

## Layout
- `sdd-kit/`: Primary specs, prompts, templates, and workflows
- `reference-codex-docs/`: Reference templates/workflows from CodeX variant
- `reference-gemini-kit/`: Reference kit from Gemini variant

## Quick start
1. Create or update artifacts using the runbooks in `sdd-kit/prompts/runbooks/`
2. Track artifacts via `sdd-kit/docs/index.yaml`
3. Keep templates enumerated in `sdd-kit/templates/index.yaml`

## Conventions
- IDs follow `AREA-####` (e.g., `PRD-0001`, `ARCH-0001`)
- Keep cross-links updated in `related` fields
- Prefer Markdown and keep docs concise but contextual

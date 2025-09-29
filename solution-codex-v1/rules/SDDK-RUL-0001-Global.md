# SDDK-RUL-0001 Global Rules

## Communication
- Always restate task objectives and constraints before acting.
- Surface uncertainties as explicit questions; never assume unresolved details.
- Maintain audit-ready logs by referencing document IDs and file paths.

## Documentation
- Follow `SDDK-FND-0002` naming conventions for every artifact.
- Prepend runtime documents with `Backlinks` pointing to relevant kit templates and upstream artifacts.
- Update all impacted documents (design, plan, execution) within the same session unless permissions forbid it.

## Testing & Quality
- Plan tests before code; record intended test commands in execution logs.
- Run available tests; if blocked, document the limitation, predicted outcome, and next steps.
- Tie every code or configuration change back to PRD features and design decisions.

## Change Control
- No destructive commands (`rm`, `git reset`, `force push`) unless explicitly approved by the user.
- Request confirmation before introducing new dependencies or altering architecture beyond agreed design.
- Record deviations from templates along with rationale and approval metadata.

## Traceability
- Ensure the plan and execution artifacts remain synchronized (task status, risk updates).
- Link glossary updates whenever new domain language emerges.

These rules apply across all commands; command-specific rules supplement but never override them.

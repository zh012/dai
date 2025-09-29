# SDDK-FND-0002 Documentation Convention

## ID scheme
- Format: `SDDK-<TYPE>-<SEQUENCE>-<Slug>.md` (ASCII slug, lowercase words separated by hyphen).
- `<TYPE>` codes:
  - `FND` for foundational guidance
  - `TMP` for templates
  - `CMD` for command prompts
  - `RUL` for behavioral rules
- `<SEQUENCE>` is a zero-padded 4-digit integer that increases over time within each type.
- Include the ID in the filename and first heading. When referencing another artifact, use its ID inline (e.g. `See SDDK-TMP-PRD-0001`).

## Directory layout
```
solution-codex-v1/
  README.md
  docs/                # Foundational guidance, indexes, process definitions
  templates/           # Markdown templates agents fill during each command
  prompts/             # Stage-specific command prompts for AI agents
  rules/               # Global and command-specific rulesets
```

## Runtime artifacts
Agents shall create runtime documents under the project workspace using this structure:
```
docs/
  init/
    INIT-<Product>-<yyyymmdd>.md
    CTXMAP-<Product>-<yyyymmdd>.md
    GLOSSARY-<Context>-v<semver>.md
  prd/
    PRD-<Product>-v<semver>.md
  design/
    DSN-<Context>-<yyyymmdd>.md
    ADR-<Context>-<DecisionId>.md
  plan/
    PLAN-<Iteration>-<yyyymmdd>.md
  execute/
    EXEC-<TaskId>-<yyyymmdd>.md
```
- Replace `<Product>`, `<Context>`, and `<Iteration>` with slugs agreed during `init`.
- `<semver>` follows `MAJOR.MINOR.PATCH`; increment when scope meaningfully changes.
- Each runtime document starts with a backlink section that cites relevant IDs (e.g. `Backlinks: SDDK-TMP-PRD-0001, PRD-Checkout-v1.2.0`).

## Linking rules
1. Every new runtime artifact must append itself to the "Related Artifacts" list in its parent stage output.
2. Cross-stage references cite both the kit template ID and the specific runtime artifact.
3. Task tracker rows include document IDs for PRD features and design decisions they implement.

## Storage and versioning
- Store artifacts alongside code in the repository to keep history reviewable.
- Use pull requests or merge requests to review changes; include doc diffs and test evidence.
- Tag releases when PRDs or designs reach a stable baseline for an increment.

## Diagram assets
- Prefer text-based diagrams (PlantUML, Mermaid) embedded in Markdown for diffability.
- When binary assets are required, document their location and checksum in the corresponding Markdown file.

Adhering to this convention keeps AI and humans synchronized while navigating the specification tree.

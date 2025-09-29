# SDDK-FND-0003 Workflow Handbook

## Stage checkpoints
| Stage | Entry Criteria | Exit Criteria |
| --- | --- | --- |
| `init` | Agreement to explore or recover domain context. | Approved vision, updated glossary, context map stored per convention. |
| `prd` | `init` artifacts available and linked. | PRD signed off, open questions captured, acceptance tests identified. |
| `design` | PRD sections prioritized and stable. | Solution options evaluated, decisions justified, tasks scaffolded. |
| `plan` | Design breakdown ready. | Task tracker populated, dependencies surfaced, WIP limits set. |
| `execute` | Tasks prioritized with definitions of done. | Code & docs updated, tests executed, tracker reflects status. |

## Traceability loop
1. **Vision → Requirements**: PRD references the vision statement (INIT runtime doc).
2. **Requirements → Design**: Each design section maps to PRD features and acceptance criteria.
3. **Design → Plan**: Task tracker rows contain design reference IDs and test placeholders.
4. **Plan → Execution**: Execution log entries cite task IDs, commit hashes, and test evidence.
5. **Execution → Feedback**: Post-run reflections update open questions, backlog items, or glossary terms.

## AI-human collaboration protocol
- Agents must surface assumptions as "Hypotheses" and seek confirmation before committing to a path.
- Humans review summarized diffs; agents provide code, test, and documentation changes backed by the kit's rules.
- Conflicting information is resolved via explicit decisions recorded in the design or plan artifacts.

## Compliance checklist
Before closing a stage, ensure:
- All mandatory template sections are filled or explicitly marked `Not Applicable (why)`.
- Cross-links are updated (`Related Artifacts`, `Traceability` tables).
- Tests for impacted code areas are listed with status (pass/fail/pending) in design, plan, and execute artifacts.
- Risks and mitigations are tracked, especially for architectural decisions.

Consult this handbook when calibrating agents or onboarding collaborators into the SDD cadence.

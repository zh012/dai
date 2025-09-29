# SDDK-CMD-0004 `plan`

## Persona & Mindset
- Act as a **Delivery Orchestrator**, drawing from Lean/Kanban principles (David J. Anderson) and TDD discipline to maintain flow and quality.
- Promote transparency, limit WIP, and keep traceability intact.

## Inputs Required
- Approved design document (`DSN-...`) and ADR references.
- Task stubs proposed during `design`.
- Team capacity, sprint length, and constraints.

## Objectives
1. Build a task tracker using `SDDK-TMP-PLN-0001` with clear ownership and DoD.
2. Establish WIP limits, reporting cadence, and status update expectations.
3. Link tasks to design references, PRD features, and test obligations.

## Workflow
1. **Capacity shaping**: Confirm resource availability and iteration boundaries.
2. **Task refinement**: Expand design task stubs into actionable items; surface dependencies and blockers.
3. **Flow setup**: Define statuses, WIP limits, and review cadences.
4. **Risk review**: Cross-check plan against design risks and mitigation actions.
5. **Sign-off**: Present plan summary and confirm stakeholder alignment.

## Output Instructions
- Save tracker as `docs/plan/PLAN-<Iteration>-<yyyymmdd>.md`.
- Use ISO week or sprint numbering for `<Iteration>` (e.g. `Sprint-05`, `WK-2024-17`).
- Ensure "Work Breakdown" table includes columns for `Design Ref`, `PRD Ref`, and `Tests` with IDs.
- Update design document's "Task Breakdown" table with `PLAN` task IDs and statuses.

## Quality Gates
- Every task has a Definition of Done tied to tests or documentation updates.
- WIP limits and review cadence recorded.
- Blockers include mitigation owners and due dates.

## Closure Checklist
- Plan document stored with backlinks referencing template and design doc.
- Dependencies and risks visible; user acknowledges readiness to execute.

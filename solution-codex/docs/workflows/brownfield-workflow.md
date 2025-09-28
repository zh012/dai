# Brownfield Spec-Driven Workflow

This workflow targets enhancements to existing systems, emphasizing legacy assessment, refactoring safety, and change impact analysis.

## Phase 0 — Intake & Triage
1. **Clarify Business Driver**
   - Artifact: Update `PRD-XXX` scope and outcomes.
   - AI Support: Product Strategist persona captures current state vs. desired state.
2. **Inventory Existing Assets**
   - Inputs: Legacy architecture diagrams, code repositories, runbooks.
   - Artifact: `ARCH-XXX` (Sections 2–7) enriched with current-state annotations.
3. **Assess Constraints & Technical Debt**
   - Activity: Map known issues to `TD-XXX` backlog; log risks in `SPRINT-XXX` template.

## Phase 1 — Domain & Context Reconciliation
1. **Refresh Context Map**
   - Artifact: `CTX-XXX` (Sections 2–6) updated to reflect actual integrations.
   - Special Focus: Identify bounded contexts that need refactoring or anti-corruption layers.
2. **Align Ubiquitous Language**
   - Activity: Diff glossary terms against legacy nomenclature, mark conflicts.
   - AI Support: Terminology Curator persona proposes normalized terms.

## Phase 2 — Impact Analysis & Planning
1. **Gap Analysis**
   - Compare `PRD-XXX` requirements with existing capabilities.
   - Output: Impacted components, migration hotspots.
2. **Technical Design Updates**
   - Artifact: `TD-XXX` sections 3–9, capturing refactor plans, strangler steps, rollout strategy.
3. **Verification Strategy**
   - Add regression tests to `TD-XXX` Section 5 and map to legacy suites.

## Phase 3 — Controlled Execution
1. **Refactor with Safety Nets**
   - Practice: Golden master tests, contract tests, feature toggles.
   - Logging: Track progress in `SPRINT-XXX` daily notes.
2. **Legacy Integration Reviews**
   - Cadence: Bi-weekly architecture sync to validate anti-corruption layers.
3. **Change Management**
   - Artifacts: Update runbooks, ops checklists, and stakeholder comms.

## Phase 4 — Stabilization & Learning
1. **Operational Readiness**
   - Validate observability, alert thresholds, rollback plans.
2. **Post-Implementation Review**
   - Artifact: Append to `ARCH-XXX` decision log and `PRD-XXX` metrics.
   - AI Support: Retrospective Facilitator persona extracts learnings.
3. **Spec Retirement or Versioning**
   - Version-bump impacted specs, archive obsolete sections, maintain change log.

## Governance Hooks
- Label all work items with corresponding `Spec-ID` and `Decision-ID` for traceability.
- Maintain history of deviations from legacy behavior and acceptance sign-offs.
- Capture technical debt tickets that must be revisited post-release.

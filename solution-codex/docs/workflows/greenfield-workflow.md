# Greenfield Spec-Driven Workflow

This workflow assumes a new product or platform with minimal legacy constraints. Each stage references the relevant artifacts and AI collaboration prompts.

## Phase 1 — Discovery & Alignment
1. **Define Product Vision**
   - Trigger: Business problem identified.
   - Artifact: `PRD-XXX` (Sections 1–3).
   - AI Support: Use `prompts/ai-persona.md` to instantiate the Product Strategist persona for vision refinement.
2. **Establish Domain Context**
   - Artifact: `CTX-XXX` (Sections 1–4).
   - Activity: Domain event storming workshops, glossary curation.
3. **Confirm Success Metrics**
   - Artifact: `PRD-XXX` (Sections 2 & 8).
   - Output: Baseline KPIs, experimentation hypotheses.

## Phase 2 — Architecture Foundations
1. **Sketch Candidate Architecture**
   - Artifact: `ARCH-XXX` (Sections 1–4).
   - Activity: Identify bounded contexts, high-level integrations, quality attributes.
2. **Review Feasibility & Constraints**
   - Artifact References: `PRD-XXX` (Section 5), `ARCH-XXX` (Sections 5–7).
   - AI Support: Invoke the Systems Architect persona to stress test constraints.
3. **Capture Strategic Decisions**
   - Artifact: `ARCH-XXX` (Section 10 decision log).
   - Governance: Include cross-functional review.

## Phase 3 — Slice Definition & Planning
1. **Prioritize Capability Slices**
   - Inputs: `PRD-XXX` features, `CTX-XXX` bounded contexts.
   - Output: Ordered slice backlog with Spec IDs.
2. **Draft Technical Designs per Slice**
   - Artifact: `TD-XXX` (Sections 1–7).
   - AI Support: Pair with the Implementation Partner persona for TDD-ready breakdowns.
3. **Plan Acceptance Tests**
   - Artifact: `TD-XXX` (Section 5).
   - Output: Initial test plan IDs (`TEST-XXX`).

## Phase 4 — Delivery & Verification
1. **Iterative Implementation**
   - Practice: Follow TDD cycles (Red → Green → Refactor).
   - Traceability: Update `TD-XXX` and sprint logs (`SPRINT-XXX`).
2. **Architecture Drift Checks**
   - Cadence: Weekly review of `ARCH-XXX` against implementation.
   - AI Support: Run architecture conformance prompt to flag divergences.
3. **Demo & Feedback**
   - Artifact: `SPRINT-XXX` (Sections 6–9).
   - Outcome: Update PRD metrics, backlog adjustments.

## Phase 5 — Launch & Continuous Improvement
1. **Release Readiness Review**
   - Checklist: Architecture, design, tests, observability, security.
2. **Post-Launch Monitoring**
   - Artifact: `SPRINT-XXX` metrics snapshot; test suite health.
3. **Retire or Evolve Specs**
   - Update statuses and versions across all artifacts.

## Governance Hooks
- Every artifact includes `Spec-ID` for cross-linking.
- Use tooling to enforce review checklists before status transitions.
- Archive superseded specs but maintain change logs (`Change-ID`).

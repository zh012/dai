---
title: Greenfield Project Workflow (DDD + TDD)
version: 0.1.0
---

## Phase 1 — Vision & PRD
- Inputs: Problem statement
- Activities: Draft  with Gherkin acceptance
- Exit: PRD approved; metrics defined

## Phase 2 — Domain & Contexts
- Activities: Context Map , UL 
- Exit: Bounded contexts + initial events/commands

## Phase 3 — Architecture Baseline
- Activities:  C1/C2/C3, integration contracts
- Exit: Architecture gate approved

## Phase 4 — Technical Design
- Activities:  per context; API/Async contracts; test list first
- Exit: Test list complete; rollout plan approved

## Phase 5 — Sprint Planning
- Activities: Backlog from PRD → stories with acceptance; populate 
- Exit: Definition of Ready satisfied

## Phase 6 — Implement (TDD)
- Loop per story:
  1) Write failing tests (unit/contract/e2e as needed)
  2) Implement minimal code
  3) Refactor with tests green
  4) Update RTM
- Exit: CI green; quality gates met

## Phase 7 — Integrate & Operate
- Activities: Contract tests against main; observability; perf checks
- Exit: Soak tests green; rollback verified

## Phase 8 — UAT & Release
- Activities: User acceptance; feature flags roll-out
- Exit: Release notes; RTM updated

## Phase 9 — Post-Launch
- Activities: Metrics review; incident drill; retro updates
- Exit: Learnings integrated into templates

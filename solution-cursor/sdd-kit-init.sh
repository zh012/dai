#!/usr/bin/env bash
set -euo pipefail
BASE="/Users/jerry/Repo/dai/solution-cursor/sdd-committee/sdd-kit"
mkdir -p "$BASE"/docs/{architecture,design,domain/{context-map,ubiquitous-language},prd,rtm,sprint} \
         "$BASE"/templates \
         "$BASE"/workflows \
         "$BASE"/prompts/runbooks

# =========================
# Templates
# =========================
cat > "$BASE/templates/architecture.md" << EOA
---
id: ARCH-XXXX
type: architecture
title: System Architecture
status: Draft
version: 0.1.0
owner: ""
reviewers: []
domain: ""
contexts: []
created: ""
updated: ""
tags: []
related: []
links: []
---

## Goals
- …

## Non-Goals
- …

## Quality Attributes & SLOs
- Availability: …
- Latency: …
- Throughput: …
- Security/Compliance: …

## C4 Overview
- C1 System Context: …
- C2 Containers: …
- C3 Key Components: …
- Diagrams: `docs/architecture/diagrams/*`

## Integrations & Context Boundaries
- Upstream/Downstream systems: …
- Contracts (OpenAPI/AsyncAPI): …
- Anti-corruption layers: …

## Data & Storage
- Data model highlights: …
- Storage choices: …
- Consistency model & invariants: …

## Security
- AuthN/AuthZ: …
- Secrets & KMS: …
- Data privacy: …

## Operations
- Observability (logs/metrics/traces): …
- Scaling strategy: …
- Deploy/rollback strategy: …

## Risks & Trade-offs
- …

## Open Questions
- …

## Checklist
- [ ] C1/C2/C3 diagrams added
- [ ] NFRs quantified
- [ ] Contracts linked
- [ ] Ops & security reviewed
EOA

cat > "$BASE/templates/context-map.md" << EOB
---
id: DOMAIN-XXXX
type: context-map
title: Context Map
status: Draft
version: 0.1.0
owner: ""
created: ""
updated: ""
tags: []
related: []
links: []
---

## Domains & Bounded Contexts
- Core Domain: …
- Supporting/Subdomains: …
- Contexts:
  - Context: …
    - Purpose: …
    - Upstream/Downstream: …
    - Integration Pattern: Conformist | ACL | Shared Kernel | Open Host | Published Language | …
    - Team: …

## Relationships
| Upstream | Downstream | Relationship | Contract | Notes |
|---------|------------|--------------|----------|-------|
|         |            |              |          |       |

## Events, Commands, Queries
- Events: …
- Commands: …
- Queries: …

## Aggregate/Entity Seeds
- Aggregate: …
  - Invariants: …
  - Policies/Sagas: …

## Open Questions
- …

## Checklist
- [ ] All contexts mapped
- [ ] Relationship patterns chosen
- [ ] Initial events/commands identified
EOB

cat > "$BASE/templates/ubiquitous-language.md" << EOC
---
id: UL-XXXX
type: ubiquitous-language
title: Ubiquitous Language Glossary
status: Draft
version: 0.1.0
owner: ""
context: ""
created: ""
updated: ""
tags: []
related: []
links: []
---

## Terms
| Term | Definition | Synonyms/Anti-terms | Context | Invariants/Notes |
|------|------------|---------------------|---------|------------------|
|      |            |                     |         |                  |

## Domain Events Vocabulary
| Event | Meaning | Producer | Consumers | Invariants |
|------|---------|----------|-----------|------------|
|      |         |          |           |            |
EOC

cat > "$BASE/templates/prd.md" << EOD
---
id: PRD-XXXX
type: prd
title: Product Requirements
status: Draft
version: 0.1.0
owner: ""
reviewers: []
created: ""
updated: ""
tags: []
related: []
links: []
---

## Summary
- Problem: …
- Outcome: …
- Target users/personas: …

## Goals & Non-Goals
- Goals: …
- Non-Goals: …

## Personas & JTBD
- Persona: …
  - Job stories: …

## User Stories with Acceptance Criteria
- Story: …
  - Priority: Must | Should | Could
  - Acceptance (Gherkin):
    ```gherkin
    Feature: …
      Scenario: …
        Given …
        When …
        Then …
    ```

## Success Metrics
- North-star: …
- Leading indicators: …

## Constraints & Assumptions
- …

## Phasing / Release Plan
- M0/MVP: …
- M1: …

## Risks / Open Questions
- …
EOD

cat > "$BASE/templates/technical-design.md" << EOE
---
id: DES-XXXX
type: technical-design
title: Technical Design
status: Draft
version: 0.1.0
owner: ""
reviewers: []
context: ""
created: ""
updated: ""
tags: []
related: [PRD-XXXX, ARCH-XXXX, DOMAIN-XXXX, UL-XXXX]
links: []
---

## Scope & Alignment
- Problem & context: …
- Fit to architecture: …

## API & Contracts
- REST/OpenAPI: …
- Async/Events (AsyncAPI): …
- Backward-compat rules: …

## Data Model
- Schemas: …
- Migrations: …

## Component Design
- Responsibilities: …
- Sequence diagrams: …

## Error Handling & Edge Cases
- …

## Test Strategy (TDD)
- Unit: …
- Integration/Contract: …
- E2E/Acceptance: …
- Test list before code:
  - [ ] …

## Performance & Security
- Perf budgets: …
- Threat model: …

## Rollout
- Feature flags: …
- Migration/Backfill: …
- Observability: …

## Alternatives Considered
- …

## Checklist
- [ ] Contracts defined & versioned
- [ ] Test list complete (red-green-refactor ready)
- [ ] Rollout & revert path documented
EOE

cat > "$BASE/templates/sprint.md" << EOF_SPRINT
---
id: SPR-YYYY-MM-DD
type: sprint
title: Sprint NN
status: Active
owner: ""
dates:
  start: ""
  end: ""
velocity_target: 0
tags: []
related: []
links: []
---

## Goals
- …

## Scope
- Linked PRDs: …
- Linked Designs: …

## Stories & Tasks
| ID | Title | Estimate | Owner | Status | DoD |
|----|-------|----------|-------|--------|-----|
|    |       |          |       |        |     |

## TDD Plan
- Test list:
  - [ ] …
- Coverage target: …
- CI gates:
  - [ ] All unit tests passing
  - [ ] Contract tests against main
  - [ ] e2e smoke green

## Daily Log / Burndown
- Day N: …

## Demo Plan
- …

## Retrospective
- What went well: …
- What to improve: …
- Actions: …
EOF_SPRINT

cat > "$BASE/templates/rtm.md" << EOF_RTM
---
id: RTM-XXXX
type: rtm
title: Requirements Traceability Matrix
status: Draft
owner: ""
created: ""
updated: ""
---

| PRD ID | Feature | Story ID | Test Case ID | Code Module | Contract | PR | Deploy Tag |
|--------|---------|----------|--------------|-------------|----------|----|------------|
|        |         |          |              |             |          |    |            |
EOF_RTM

cat > "$BASE/templates/index.yaml" << EOF_IDX
version: 1
updated: ""
docs: []
EOF_IDX

# =========================
# Docs (instantiated examples)
# =========================
cat > "$BASE/docs/index.yaml" << EOF_DOCIDX
version: 1
updated: 2025-09-28
docs:
  - id: PRD-0001
    type: prd
    title: Example Product Requirement
    path: prd/PRD-0001-example.md
    status: Draft
    related: [ARCH-0001, DES-0001, RTM-0001]
  - id: ARCH-0001
    type: architecture
    title: System Architecture v1
    path: architecture/ARCH-0001-architecture.md
    status: Draft
    related: [PRD-0001, DES-0001]
  - id: DOMAIN-0001
    type: context-map
    title: Core Domain Context Map
    path: domain/context-map/DOMAIN-0001-context-map.md
    status: Draft
    related: [UL-0001]
  - id: UL-0001
    type: ubiquitous-language
    title: Ubiquitous Language Glossary
    path: domain/ubiquitous-language/UL-0001-glossary.md
    status: Draft
  - id: DES-0001
    type: technical-design
    title: Core Service Technical Design
    path: design/DES-0001-core-service.md
    status: Draft
  - id: SPR-2025-10-01
    type: sprint
    title: Sprint 01
    path: sprint/SPR-2025-10-01-sprint-01.md
    status: Active
  - id: RTM-0001
    type: rtm
    title: Requirements Traceability
    path: rtm/RTM-0001.md
    status: Draft
EOF_DOCIDX

cat > "$BASE/docs/README.md" << EOF_README
SDD docs live here. Use `docs/index.yaml` as the source of truth linking PRDs, Architecture, Domain artifacts, Designs, Sprints, and the RTM.
EOF_README

# PRD
cat > "$BASE/docs/prd/PRD-0001-example.md" << EOF_PRD
---
id: PRD-0001
type: prd
title: Example Product Requirement
status: Draft
version: 0.1.0
owner: ""
reviewers: []
created: 2025-09-28
updated: 2025-09-28
tags: []
related: [ARCH-0001, DES-0001, RTM-0001]
links: []
---

## Summary
- Problem: …
- Outcome: …
- Target users/personas: …

## Goals & Non-Goals
- Goals: …
- Non-Goals: …

## Personas & JTBD
- Persona: …
  - Job stories: …

## User Stories with Acceptance Criteria
- Story: As a … I want … so that …
  - Priority: Must
  - Acceptance (Gherkin):
    ```gherkin
    Feature: Example
      Scenario: Happy path
        Given …
        When …
        Then …
    ```

## Success Metrics
- North-star: …
- Leading indicators: …

## Constraints & Assumptions
- …

## Phasing / Release Plan
- M0/MVP: …
- M1: …

## Risks / Open Questions
- …
EOF_PRD

# Architecture
data=$(date +%Y-%m-%d)
cat > "$BASE/docs/architecture/ARCH-0001-architecture.md" << EOA_DOC
---
id: ARCH-0001
type: architecture
title: System Architecture v1
status: Draft
version: 0.1.0
owner: ""
reviewers: []
domain: ""
contexts: []
created: $data
updated: $data
tags: []
related: [PRD-0001, DES-0001]
links: []
---

## Goals
- …

## Non-Goals
- …

## Quality Attributes & SLOs
- …

## C4 Overview
- C1: …
- C2: …
- C3: …

## Integrations & Context Boundaries
- …

## Data & Storage
- …

## Security
- …

## Operations
- …

## Risks & Trade-offs
- …

## Open Questions
- …

## Checklist
- [ ] C1/C2/C3 diagrams added
- [ ] NFRs quantified
- [ ] Contracts linked
- [ ] Ops & security reviewed
EOA_DOC

# Context Map
cat > "$BASE/docs/domain/context-map/DOMAIN-0001-context-map.md" << EOCM
---
id: DOMAIN-0001
type: context-map
title: Core Domain Context Map
status: Draft
version: 0.1.0
owner: ""
created: $data
updated: $data
tags: []
related: [UL-0001]
links: []
---

## Domains & Bounded Contexts
- Core Domain: …
- Supporting/Subdomains: …
- Contexts:
  - Context: …
    - Purpose: …
    - Upstream/Downstream: …
    - Integration Pattern: Conformist | ACL | Shared Kernel | …

## Relationships
| Upstream | Downstream | Relationship | Contract | Notes |
|---------|------------|--------------|----------|-------|
|         |            |              |          |       |

## Events, Commands, Queries
- Events: …
- Commands: …
- Queries: …

## Aggregate/Entity Seeds
- Aggregate: …
  - Invariants: …
  - Policies/Sagas: …

## Open Questions
- …

## Checklist
- [ ] All contexts mapped
- [ ] Relationship patterns chosen
- [ ] Initial events/commands identified
EOCM

# Ubiquitous Language
cat > "$BASE/docs/domain/ubiquitous-language/UL-0001-glossary.md" << EOUL
---
id: UL-0001
type: ubiquitous-language
title: Ubiquitous Language Glossary
status: Draft
version: 0.1.0
owner: ""
context: ""
created: $data
updated: $data
tags: []
related: [DOMAIN-0001]
links: []
---

## Terms
| Term | Definition | Synonyms/Anti-terms | Context | Invariants/Notes |
|------|------------|---------------------|---------|------------------|
|      |            |                     |         |                  |

## Domain Events Vocabulary
| Event | Meaning | Producer | Consumers | Invariants |
|------|---------|----------|-----------|------------|
|      |         |          |           |            |
EOUL

# Technical Design
cat > "$BASE/docs/design/DES-0001-core-service.md" << EODSN
---
id: DES-0001
type: technical-design
title: Core Service Technical Design
status: Draft
version: 0.1.0
owner: ""
reviewers: []
context: ""
created: $data
updated: $data
tags: []
related: [PRD-0001, ARCH-0001, DOMAIN-0001, UL-0001]
links: []
---

## Scope & Alignment
- …

## API & Contracts
- …

## Data Model
- …

## Component Design
- …

## Error Handling & Edge Cases
- …

## Test Strategy (TDD)
- Unit: …
- Integration/Contract: …
- E2E/Acceptance: …
- Test list before code:
  - [ ] …

## Performance & Security
- …

## Rollout
- …

## Alternatives Considered
- …

## Checklist
- [ ] Contracts defined & versioned
- [ ] Test list complete
- [ ] Rollout & revert path documented
EODSN

# Sprint
cat > "$BASE/docs/sprint/SPR-2025-10-01-sprint-01.md" << EOSP
---
id: SPR-2025-10-01
type: sprint
title: Sprint 01
status: Active
owner: ""
dates:
  start: 2025-10-01
  end: 2025-10-14
velocity_target: 0
tags: []
related: [PRD-0001, DES-0001]
links: []
---

## Goals
- …

## Scope
- Linked PRDs: PRD-0001
- Linked Designs: DES-0001

## Stories & Tasks
| ID | Title | Estimate | Owner | Status | DoD |
|----|-------|----------|-------|--------|-----|
|    |       |          |       |        |     |

## TDD Plan
- Test list:
  - [ ] …
- Coverage target: …
- CI gates:
  - [ ] All unit tests passing
  - [ ] Contract tests against main
  - [ ] e2e smoke green

## Daily Log / Burndown
- Day 1: …

## Demo Plan
- …

## Retrospective
- What went well: …
- What to improve: …
- Actions: …
EOSP

# RTM
cat > "$BASE/docs/rtm/RTM-0001.md" << EORTM
---
id: RTM-0001
type: rtm
title: Requirements Traceability Matrix
status: Draft
owner: ""
created: $data
updated: $data
---

| PRD ID | Feature | Story ID | Test Case ID | Code Module | Contract | PR | Deploy Tag |
|--------|---------|----------|--------------|-------------|----------|----|------------|
|        |         |          |              |             |          |    |            |
EORTM

# =========================
# Workflows (Greenfield/Brownfield)
# =========================
cat > "$BASE/workflows/greenfield.md" << EO_GRF
---
title: Greenfield Project Workflow (DDD + TDD)
version: 0.1.0
---

## Phase 1 — Vision & PRD
- Inputs: Problem statement
- Activities: Draft `PRD-XXXX` with Gherkin acceptance
- Exit: PRD approved; metrics defined

## Phase 2 — Domain & Contexts
- Activities: Context Map `DOMAIN-XXXX`, UL `UL-XXXX`
- Exit: Bounded contexts + initial events/commands

## Phase 3 — Architecture Baseline
- Activities: `ARCH-XXXX` C1/C2/C3, integration contracts
- Exit: Architecture gate approved

## Phase 4 — Technical Design
- Activities: `DES-XXXX` per context; API/Async contracts; test list first
- Exit: Test list complete; rollout plan approved

## Phase 5 — Sprint Planning
- Activities: Backlog from PRD → stories with acceptance; populate `SPR-*`
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
EO_GRF

cat > "$BASE/workflows/brownfield.md" << EO_BRF
---
title: Brownfield Project Workflow (Modernization)
version: 0.1.0
---

## Step 1 — Discovery
- Reverse context map; capture UL; baseline `ARCH current`
- Characterization tests for critical flows

## Step 2 — Target Design
- New `ARCH target`; `DES-XXXX`; strangler plan; migration strategy

## Step 3 — Contract First
- Define/lock contracts; add consumer-driven tests

## Step 4 — Incremental Delivery (TDD)
- For each slice: write tests → adapters/ACL → migrate → flip flag

## Step 5 — Cutover & Cleanup
- Backfill/migrations; remove legacy paths; update RTM
EO_BRF

# =========================
# Prompts & Runbooks
# =========================
cat > "$BASE/prompts/system-orchestrator.md" << EO_SYS
System role: You are the SDD Orchestrator enforcing DDD + TDD rigor.
Principles:
- Require YAML frontmatter with ids/types; link docs via `docs/index.yaml`.
- Always propose tests before code; demand acceptance criteria in Gherkin.
- Maintain traceability (PRD → Design → Tests → Code → PR → Deploy) in `RTM`.
- Protect bounded contexts; propose ACL/Conformist, not ad-hoc sharing.
- Ask clarifying questions when requirements are ambiguous.
Gates:
- Block design without contracts.
- Block code without failing tests first.
- Block merge if RTM not updated or CI gates fail.
EO_SYS

cat > "$BASE/prompts/persona-architect.md" << EO_PARCH
You are the Lead Architect and DDD coach.
Focus:
- Shape bounded contexts, aggregates, invariants, and event flows.
- Produce C4 (C1–C3) views and contract-first interfaces.
- Evaluate trade-offs; document risks and ops concerns.
Output:
- `ARCH-XXXX`, `DOMAIN-XXXX`, `UL-XXXX`, contract specs, diagrams list.
EO_PARCH

cat > "$BASE/prompts/persona-product.md" << EO_PPROD
You are the Product Partner.
Focus:
- Clarify outcomes, constraints, personas, JTBD.
- Author user stories with clear Gherkin acceptance and success metrics.
Output:
- `PRD-XXXX` with phased plan and measurable goals.
EO_PPROD

cat > "$BASE/prompts/persona-tdd-copilot.md" << EO_TDD
You are the TDD Copilot.
Rules:
- Produce a test list first; mark them red.
- Generate unit/contract/e2e tests aligned to acceptance criteria.
- Implement only enough code to go green; then refactor.
- Keep contracts backward compatible; add contract tests for changes.
Output:
- Test files, minimal implementation, refactors, updated RTM row.
EO_TDD

cat > "$BASE/prompts/runbooks/create-prd.md" << EO_RB_PRD
Goal: Create `PRD-XXXX`.
Inputs: Problem, personas, constraints.
Steps:
1) Draft PRD using `templates/prd.md`.
2) For each story, add Gherkin acceptance.
3) Define success metrics and phasing.
4) Add to `docs/index.yaml` and link related architecture/design.
EO_RB_PRD

cat > "$BASE/prompts/runbooks/define-context-map.md" << EO_RB_CM
Goal: Create `DOMAIN-XXXX` and `UL-XXXX`.
Steps:
1) Identify domains and bounded contexts.
2) Map upstream/downstream with relationship patterns.
3) List initial events/commands; seed aggregates and invariants.
4) Update `docs/index.yaml` and link to PRD/Architecture.
EO_RB_CM

cat > "$BASE/prompts/runbooks/design-service.md" << EO_RB_DES
Goal: Produce `DES-XXXX`.
Steps:
1) Align scope to context; list responsibilities.
2) Define API/Async contracts; versioning policy.
3) Create test list (unit, contract, e2e) before code.
4) Plan rollout/flags, migration, observability.
EO_RB_DES

cat > "$BASE/prompts/runbooks/implement-with-tdd.md" << EO_RB_TDD
Goal: Deliver a story with TDD.
Steps:
1) Start from acceptance criteria; derive test list.
2) Write failing tests (unit/contract/e2e as needed).
3) Implement minimal code; refactor.
4) Update RTM; open PR with links to PRD/Design/Tests.
EO_RB_TDD

cat > "$BASE/prompts/runbooks/sprint-planning.md" << EO_RB_SPR
Goal: Plan a sprint.
Steps:
1) Select PRD scope; confirm `Definition of Ready`.
2) Break into stories; size and DoD.
3) Fill `SPR-*` with goals, tasks, CI gates, coverage target.
4) Establish demo plan and retro questions.
EO_RB_SPR

printf "SDD kit created at: %s\n" "$BASE"

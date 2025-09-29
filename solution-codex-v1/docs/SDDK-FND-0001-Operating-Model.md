# SDDK-FND-0001 Operating Model

## Mission
Spec-Driven Development (SDD) enables AI-assisted teams to frame, analyze, and deliver software by continuously grounding decisions in explicit specifications. It blends:
- Strategic and tactical Domain-Driven Design (Eric Evans, Vaughn Vernon) to map problem and solution spaces.
- Test-Driven Development (Kent Beck) to drive executable specifications and incremental implementation.
- AI facilitation patterns (prompt engineering, reflective planning) to keep human oversight and traceability.

## Lifecycle alignment
| Stage | Command | Key Outputs | Governing Templates |
| --- | --- | --- | --- |
| Project initialization | `init` | Vision brief, context map, bounded context glossary | `SDDK-TMP-INT-0001`, `SDDK-TMP-CTX-0001`, `SDDK-TMP-GLS-0001` |
| PRD creation | `prd` | Product Requirements Document | `SDDK-TMP-PRD-0001` |
| Solution design | `design` | Architecture decision log, design package, use-case breakdown | `SDDK-TMP-DSN-0001` |
| Task planning | `plan` | Task tracker with context links | `SDDK-TMP-PLN-0001` |
| Task execution | `execute` | Execution log, code/test updates, burndown | `SDDK-TMP-EXE-0001` |

## Roles and personas
- **Facilitator Agent** (default persona supplied in prompts) conducts interviews, synthesizes responses, and drafts artifacts by referencing the kit.
- **Reviewer Agent** (secondary persona optionally invoked) challenges assumptions, checks DDD alignment, and validates TDD coverage.
- **User/Stakeholder** provides domain insight, confirms artifacts, and approves transitions between stages.

## Source principles
- Favor ubiquitous language and bounded contexts (Evans, *Domain-Driven Design*).
- Lean on context mapping and strategic design (Vernon, *Implementing Domain-Driven Design*).
- Treat tests as executable requirements (Beck, *Test-Driven Development by Example*).
- Capture architecture decisions with rationale (Ford et al., *Building Evolutionary Architectures*).
- Maintain lightweight but living documentation that changes with code (Humble & Farley, *Continuous Delivery*).

## Cross-stage obligations
1. Each stage inherits the previous artifacts and records references using the ID convention.
2. Each command prompt enforces validation steps (open questions, acceptance checks, regression impacts) before closing the stage.
3. Updates must be reflected in both textual artifacts and, when applicable, executable tests or diagrams.
4. Deviations from templates require explicit sign-off captured in the relevant artifact.

Use this doc as an anchor reference when onboarding new agents or stakeholders to SDD workflows.

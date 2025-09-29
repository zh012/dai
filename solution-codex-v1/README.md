# Spec-Driven Development Kit (SDDK)

ID: SDDK-FND-0000

## Purpose
Spec-Driven Development (SDD) pairs Domain-Driven Design (DDD) with Test-Driven Development (TDD) and AI-assisted delivery. This kit packages documentation structures, templates, command prompts, and behavioral rules so that agents can run a coherent specification-first workflow across project lifecycle stages.

## What is included
- Foundational guides under `docs/` that explain the operating model and documentation conventions.
- Reusable Markdown templates under `templates/` for core SDD artifacts (vision, PRD, design, plan, execution log).
- Command prompts under `prompts/` (init, prd, design, plan, execute) that configure AI personas, reference classic sources such as Eric Evans' *Domain-Driven Design* and Kent Beck's *Test-Driven Development*, and define file outputs.
- Behavioral rules under `rules/` that constrain input/output and link the workflow across stages.

## Naming and linking overview
- All kit documents, prompts, templates, and rules use the `SDDK-<TYPE>-<SEQUENCE>-<Slug>.md` convention; details in `docs/SDDK-FND-0002-Documentation-Convention.md`.
- Runtime artifacts that an agent generates must mirror the kit structure beneath the solution root (e.g. `workspace/docs/prd/PRD-<Context>-<Date>.md`).
- Each command prompt instructs the agent to append cross-links (e.g. PRD references the initialization glossary, design links to PRD features).

## Usage flow
1. Run `init` to clarify or recover vision, architecture, context map, and ubiquitous language.
2. Run `prd` to capture the agreed product requirements.
3. Run `design` to select solutions, define architecture decisions, and break down work.
4. Run `plan` to build a trackable task board wired to documentation context.
5. Run `execute` iteratively, updating tasks, code, and documentation in lockstep.

Each stage references the templates and rules shipped here so agents stay aligned while collaborating with humans.

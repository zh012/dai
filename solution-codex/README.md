# Spec-Driven Development Kit

This kit combines Domain-Driven Design (DDD) and Test-Driven Development (TDD) practices to support AI-assisted delivery. It provides:

- Templates for the core specification artifacts.
- Standard workflows for greenfield and brownfield projects.
- Prompt patterns for defining AI collaborator personas and governing conversations.

## Structure

- `docs/templates/` — Fill-in templates for each specification artifact.
- `docs/workflows/` — Recommended step-by-step workflows.
- `prompts/` — Persona definitions and reusable orchestration prompts.

## Usage

1. Start from the relevant workflow (greenfield or brownfield) in `docs/workflows/`.
2. Instantiate the required templates as you progress. Each template references related artifacts to keep the system of record coherent.
3. When collaborating with AI tooling, load the personas and rules in `prompts/` to keep interactions aligned with the methodology.

Each artifact captures traceability hooks (such as `Spec-ID` or `Decision-ID` fields) so automated tooling can index and cross-reference decisions, tests, and code.

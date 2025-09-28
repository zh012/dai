# Brownfield Project Workflow

This workflow guides the development of new features or changes to an existing software project, using the Spec-Driven Development kit.

## Phase 1: Analysis & Understanding

1.  **Analyze the Existing System**: Before making any changes, it's crucial to understand the current state of the software.
    -   **Goal**: To build a mental model of the existing architecture, identify key components, and understand the business logic.
    -   **AI Prompt**: `"I need to understand this existing codebase. Can you analyze the code in the `src` directory and generate a high-level overview of the architecture? Identify the main modules and their responsibilities."`

2.  **Reverse-Engineer the Specs**: Where documentation is missing, create it.
    -   **Goal**: To document the existing system's behavior and structure.
    -   **AI Prompt (for Ubiquitous Language)**: `"Analyze the domain models in the codebase and help me create a Ubiquitous Language glossary for the [Domain Name] domain."`
    -   **AI Prompt (for Context Map)**: `"Based on the communication patterns between services, can you help me draft a Context Map?"`

## Phase 2: Specification & Design

3.  **Define the New Requirements**: For the new feature or change, fill out a **Product Requirements Document (PRD)** (`templates/prd.md`).
    -   **Goal**: To clearly define the desired changes and their impact on the existing system.
    -   **AI Prompt**: `"I want to add [new feature] to the existing system. Let's create a PRD for it. How will this affect the existing user personas?"`

4.  **Create the Technical Design**: Create a **Technical Design Document** (`templates/technical-design.md`) for the proposed changes.
    -   **Goal**: To detail how the new feature will be implemented and integrated with the existing system.
    -   **AI Prompt**: `"Let's create a technical design for implementing the new feature. How can we integrate it with the existing [Component Name] component? What new test cases will we need?"`

## Phase 3: Implementation & Verification

5.  **Plan and Track Sprints**: Use the **Sprint Tracking** template (`templates/sprint-tracking.md`) to manage the development work.

6.  **Develop and Test**: Implement the changes following a TDD approach. Pay close attention to writing integration tests to prevent regressions.
    -   **Goal**: To ensure the new code works as expected and doesn't break existing functionality.
    -   **AI Prompt (for TDD)**: `"I'm about to modify the [Class Name] class. Let's write a set of characterization tests first to ensure we don't change its existing behavior unintentionally."`

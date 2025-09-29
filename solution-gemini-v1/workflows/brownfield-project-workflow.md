
# Brownfield Project Workflow

This workflow guides the development of new features in an existing project.

## 1. `init`

*   **Goal:** Understand the existing project and establish a baseline.
*   **AI Agent:**
    *   Scan the current codebase to identify the product vision, system architecture, context map, and ubiquitous language.
    *   Create or update the following documents:
        *   System Architecture (`ARCH-YYYYMMDD-XXX`)
        *   Context Map & Ubiquitous Language
    *   Store these documents in the `docs/architecture` and `docs/domain` directories.
    *   Confirm the refined documents with the user.

## 2. `prd`

*   **Goal:** Define the product requirements for the new feature.
*   **AI Agent:**
    *   Work with the user to create a Product Requirements Document (PRD).
    *   Store the PRD in the `docs/prd` directory.

## 3. `design`

*   **Goal:** Create a detailed technical design for the new feature.
*   **AI Agent:**
    *   Analyze the PRD and the existing codebase to propose a technical solution.
    *   Create Technical Design documents for each use case.
    *   Store the design documents in the `docs/design` directory.

## 4. `plan`

*   **Goal:** Plan the implementation tasks.
*   **AI Agent:**
    *   Create a Sprint Tracking document.
    *   Break down the design into tasks and populate the sprint plan.
    *   Store the sprint tracking document in the `docs/sprint` directory.

## 5. `execute`

*   **Goal:** Implement the tasks and deliver the feature.
*   **AI Agent:**
    *   Follow the TDD process: write a failing test, write the code to make it pass, and refactor.
    *   Update the Sprint Tracking document with the task status.
    *   Request user confirmation before committing any code.

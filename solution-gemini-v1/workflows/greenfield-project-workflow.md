
# Greenfield Project Workflow

This workflow guides the development of a new project from scratch.

## 1. `init`

*   **Goal:** Establish the project's foundation.
*   **AI Agent:**
    *   Interactively communicate with the user to define the product vision.
    *   Create the initial System Architecture document (`ARCH-YYYYMMDD-XXX`).
    *   Create the initial Context Map & Ubiquitous Language document.
    *   Store these documents in the `docs/architecture` and `docs/domain` directories, respectively.

## 2. `prd`

*   **Goal:** Define the product requirements.
*   **AI Agent:**
    *   Work with the user to create a Product Requirements Document (PRD).
    *   Store the PRD in the `docs/prd` directory.

## 3. `design`

*   **Goal:** Create a detailed technical design for the required features.
*   **AI Agent:**
    *   Analyze the PRD and propose a technical solution.
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

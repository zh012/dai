# Greenfield Project Workflow

This workflow guides the development of a new software project from scratch, using the Spec-Driven Development kit.

## Phase 1: Discovery & Definition

1.  **Define the Product Vision**: Fill out the **Product Requirements Document (PRD)** (`templates/prd.md`).
    -   **Goal**: To establish a clear understanding of the problem, the target users, and the desired functionality.
    -   **AI Prompt**: `"Based on this initial idea, help me flesh out a complete PRD. Let's start by defining the user personas."`

2.  **Define the Ubiquitous Language and Context Map**: Fill out the **Context Map & Ubiquitous Language** document (`templates/context-map-and-ubiquitous-language.md`).
    -   **Goal**: To establish the vocabulary and boundaries of the system's different domains.
    -   **AI Prompt**: `"Let's analyze the PRD and identify the core domains. For each domain, we need to define its bounded context and the ubiquitous language."`

## Phase 2: Architecture & Design

3.  **Design the System Architecture**: Fill out the **System Architecture** document (`templates/system-architecture.md`).
    -   **Goal**: To define the high-level structure of the system.
    -   **AI Prompt**: `"Given the PRD and Context Map, propose a system architecture that meets the requirements. Focus on [key architectural goal, e.g., scalability]."`

4.  **Create the Technical Design**: For each major feature or user story, create a **Technical Design Document** (`templates/technical-design.md`).
    -   **Goal**: To detail the implementation plan for each feature, including the TDD strategy.
    -   **AI Prompt**: `"Let's create a technical design for user story US001. Break it down into components, define their APIs, and outline the test cases we'll need to write."`

## Phase 3: Implementation & Tracking

5.  **Plan and Track Sprints**: Use the **Sprint Tracking** template (`templates/sprint-tracking.md`) to plan and monitor the development work.
    -   **Goal**: To manage the implementation process in an agile manner.
    -   **AI Prompt**: `"Let's plan our first sprint. Based on the technical design documents, which user stories should we prioritize? Help me break them down into tasks."`

6.  **Develop and Test**: Implement the features according to the technical design, following a TDD approach.
    -   **Goal**: To write high-quality, well-tested code.
    -   **AI Prompt (for TDD)**: `"I need to implement the [Component Name] from the technical design. Write the first failing unit test for the [method name] method."`

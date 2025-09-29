# Spec-Driven Development (SDD) Kit

The Spec-Driven Development Kit is a comprehensive framework designed to guide AI-assisted software development following Domain-Driven Design (DDD) and Test-Driven Development (TDD) principles.

## Overview

This kit provides a structured approach to software development that includes:

- **Documentation templates** - Standardized templates for all development artifacts
- **Documentation structures** - Organized formats for consistent information management
- **AI Commands** - Persona/guidance prompts for AI to play different roles during development
- **Rules** - Constraints on AI input, output, and behavior during development tasks

## Development Phases

The SDD kit supports the following development phases:

### 1. Project Initialization (`init`)
- **Green field project**: AI agent interacts with user to clarify product vision and set up system architecture, context map, and ubiquitous language glossary
- **Brown field project**: AI agent scans existing codebase to identify product vision, system architecture, context map, and ubiquitous language glossary, then confirms and refines with user

### 2. PRD Creation (`prd`)
- Create PRD interactively with user
- Output PRD document in a standardized format and location

### 3. Solution Design (`design`)
- Analyze requirements and determine technical solution
- Break down tasks to achieve the design for each use case
- Output design document in a standardized format and location

### 4. Task Planning (`plan`)
- Create task tracking document with just enough context
- Link the task document to relevant artifacts
- Output task tracking document in a standardized format and location

### 5. Task Execution (`execute`)
- Execute assigned tasks and keep the task tracking file up to date

## Structure

- `docs/` - Documentation templates and structures
- `templates/` - Standardized document templates
- `prompts/` - AI persona/command prompts
- `rules/` - Constraints and guidelines for AI behavior
- `commands/` - Command-specific logic and instructions
- `utils/` - Utility functions and helpers

## Document Management

- All documents have unique IDs and are structured by convention for easy reference and location
- Document templates balance granularity to provide enough context without overwhelming developers
- Specific instructions for naming, location, and linking documents ensure consistency

## Prerequisites

- Understanding of Domain-Driven Design principles
- Familiarity with Test-Driven Development practices
- Access to an AI assistant capable of following structured prompts
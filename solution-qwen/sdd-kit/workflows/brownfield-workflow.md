# Brownfield Development Workflow

## Overview
This workflow is designed for enhancing, refactoring, or extending existing software systems. It emphasizes understanding existing domains, working with legacy code, and making incremental improvements while maintaining system stability. The workflow combines Domain-Driven Design (DDD) and Test-Driven Development (TDD) principles with AI-assisted analysis and development.

## Phase 1: Legacy Analysis and Domain Discovery

### Step 1.1: System Understanding and Mapping
- **Objective**: Understand the existing system architecture and behavior
- **Deliverables**: System architecture overview, codebase analysis, dependency map
- **Activities**:
  - Analyze existing codebase structure
  - Identify system boundaries and components
  - Document current system behavior
- **AI Prompt**: "Analyze the provided codebase structure [codebase details] and identify the main system components, their relationships, and current architecture patterns."

### Step 1.2: Domain Discovery in Legacy Code
- **Objective**: Extract domain concepts from existing system
- **Deliverables**: Discovered domain concepts, implicit models, domain vocabulary
- **Activities**:
  - Identify domain entities and concepts in code
  - Extract business rules from implementation
  - Discover existing implicit domain models
- **AI Prompt**: "Based on the provided [code files], identify the domain entities, business rules, and conceptual models that appear to be implemented in this system."

### Step 1.3: Technical Debt Assessment
- **Objective**: Identify technical debt and areas needing improvement
- **Deliverables**: Technical debt inventory, risk assessment, refactoring priorities
- **Activities**:
  - Analyze code quality and maintainability
  - Identify complex or problematic areas
  - Assess test coverage and quality
- **AI Prompt**: "Review [code files] to identify technical debt, code smells, and areas that should be improved before adding new functionality."

## Phase 2: Context Mapping and Domain Modeling

### Step 2.1: Existing Context Map Creation
- **Objective**: Map the existing bounded contexts in the legacy system
- **Deliverables**: Context map of existing system, relationship definitions
- **Activities**:
  - Identify existing bounded contexts in the codebase
  - Document relationships between contexts
  - Identify integration patterns currently used
- **AI Prompt**: "Based on the codebase [details], identify the potential bounded contexts that exist and how they relate to each other. Create a context map."

### Step 2.2: Ubiquitous Language Extraction
- **Objective**: Extract and document existing terminology
- **Deliverables**: Legacy domain vocabulary, terminology inconsistencies
- **Activities**:
  - Extract terminology from code, comments, and documentation
  - Identify inconsistent usage of terms
  - Map code concepts to business concepts
- **AI Prompt**: "Extract the domain terminology used in [codebase/files] and identify how these terms map to business concepts. Highlight any inconsistencies."

### Step 2.3: Domain Model Reverse Engineering
- **Objective**: Create domain models from existing implementation
- **Deliverables**: Reverse-engineered domain models, entity relationships
- **Activities**:
  - Create domain models from existing classes and functions
  - Identify entities, value objects, and aggregates in the code
  - Document business logic implementation
- **AI Prompt**: "Reverse engineer the domain model from [code files] and identify entities, value objects, aggregates, and domain services implemented in this system."

## Phase 3: Requirements and Specification for Changes

### Step 3.1: Requirements Analysis with Legacy Context
- **Objective**: Define new requirements considering existing system
- **Deliverables**: Requirements document with legacy integration points
- **Activities**:
  - Analyze new requirements in context of existing system
  - Identify integration points and dependencies
  - Document impact on existing functionality
- **AI Prompt**: "Given the existing system [description] and new requirement [requirement], how should I approach implementing this while integrating with the current system?"

### Step 3.2: Technical Design for Integration
- **Objective**: Design technical approach for integrating changes
- **Deliverables**: Technical design document, integration patterns
- **Activities**:
  - Design integration between new and existing features
  - Plan API compatibility and migration strategies
  - Design anti-corruption layers if needed
- **AI Prompt**: "Design the technical approach for integrating [new functionality] with the existing [system/component], ensuring backward compatibility and minimal disruption."

### Step 3.3: Risk Analysis and Mitigation Planning
- **Objective**: Identify risks and plan mitigation strategies
- **Deliverables**: Risk assessment document, mitigation strategies
- **Activities**:
  - Identify risks related to changing legacy code
  - Plan for system stability and data integrity
  - Design rollback and safety measures
- **AI Prompt**: "Analyze potential risks when modifying [part of system] to add [new functionality] and suggest mitigation strategies."

## Phase 4: Safety First Implementation

### Step 4.1: Test Coverage Improvement
- **Objective**: Increase test coverage before making changes
- **Deliverables**: Additional tests, improved test coverage
- **Activities**:
  - Write characterization tests for existing behavior
  - Create unit tests for critical components
  - Improve test coverage in preparation for changes
- **AI Prompt**: "Create characterization tests for [component/functionality] to capture its current behavior before refactoring."

### Step 4.2: Refactoring with TDD
- **Objective**: Improve legacy code following TDD principles
- **Deliverables**: Refactored code, passing tests, improved design
- **Activities**:
  - Write tests for existing functionality
  - Make small, safe refactorings
  - Gradually improve design while maintaining behavior
- **AI Prompt**: "I want to refactor [code section] to improve its design. What tests should I write first to ensure I don't change its behavior?"

### Step 4.3: Incremental Feature Addition
- **Objective**: Add new features using TDD
- **Deliverables**: New functionality, comprehensive tests
- **Activities**:
  - Write tests for new functionality first
  - Implement minimal code to pass tests
  - Integrate with existing system safely
- **AI Prompt**: "Following TDD, I need to implement [new feature] that integrates with [existing component]. Write the first test I should create."

## Phase 5: Legacy Modernization and Alignment

### Step 5.1: Domain Model Alignment
- **Objective**: Align extracted models with new understanding
- **Deliverables**: Updated domain models, aligned terminology
- **Activities**:
  - Refine domain models based on deeper analysis
  - Align legacy concepts with new domain understanding
  - Update ubiquitous language
- **AI Prompt**: "Based on deeper analysis of the system, I've gained new insights about the domain. How should I update our domain models to align with our current understanding?"

### Step 5.2: Architecture Evolution
- **Objective**: Evolve architecture to better reflect domain
- **Deliverables**: Improved architecture, refactored components
- **Activities**:
  - Refactor components to better reflect domain concepts
  - Implement anti-corruption layers where needed
  - Improve boundaries between contexts
- **AI Prompt**: "How can I refactor [existing component/area] to better reflect the domain concepts while maintaining system stability?"

### Step 5.3: Documentation Update
- **Objective**: Update documentation to reflect current system
- **Deliverables**: Updated architectural documents, design documents
- **Activities**:
  - Update architecture documentation
  - Document changes made during modernization
  - Maintain documentation consistency
- **AI Prompt**: "Summarize the changes made during the modernization of [system/component] to update our architectural documentation."

## Phase 6: Stabilization and Future-Proofing

### Step 6.1: System Stabilization
- **Objective**: Ensure system stability after changes
- **Deliverables**: Stable system, performance verification
- **Activities**:
  - Verify system behavior after changes
  - Perform regression testing
  - Monitor system performance
- **AI Prompt**: "How can I verify that the changes to [system] maintain backward compatibility and system stability?"

### Step 6.2: Pattern Recognition and Standardization
- **Objective**: Identify and standardize patterns in the system
- **Deliverables**: Standardized patterns, improved consistency
- **Activities**:
  - Identify recurring patterns in the codebase
  - Standardize implementations where possible
  - Document best practices for the system
- **AI Prompt**: "Identify design patterns and implementation approaches in [codebase] and suggest how to standardize them for better maintainability."

### Step 6.3: Knowledge Transfer and Documentation
- **Objective**: Transfer knowledge and document lessons learned
- **Deliverables**: Knowledge base, lessons learned, best practices
- **Activities**:
  - Document discoveries about the legacy system
  - Share knowledge with team members
  - Create guides for future work on the system
- **AI Prompt**: "Summarize the key insights about [system] that future developers should know, including hidden complexities and best approaches for modifications."
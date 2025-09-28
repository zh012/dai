# Greenfield Development Workflow

## Overview
This workflow is designed for creating new software systems from scratch, emphasizing domain discovery, clean architecture, and iterative specification refinement. It combines Domain-Driven Design (DDD) and Test-Driven Development (TDD) principles with AI-assisted development.

## Phase 1: Domain Discovery and Strategic Design

### Step 1.1: Stakeholder Engagement
- **Objective**: Identify domain experts and key stakeholders
- **Deliverables**: Stakeholder map, initial domain understanding
- **Activities**:
  - Conduct domain expert interviews
  - Identify business capabilities and processes
  - Document initial domain vocabulary
- **AI Prompt**: "Act as a domain analyst and help me identify key concepts in [domain name] by interviewing domain experts. What questions should I ask to understand the core business processes?"

### Step 1.2: Context Mapping
- **Objective**: Define system boundaries and relationships
- **Deliverables**: Initial context map, bounded context definitions
- **Activities**:
  - Identify and name bounded contexts
  - Define relationships between contexts
  - Establish team boundaries and responsibilities
- **AI Prompt**: "Based on the [domain description], create a context map showing the bounded contexts, their relationships, and the ubiquitous language for each."

### Step 1.3: Ubiquitous Language Creation
- **Objective**: Establish consistent terminology across the project
- **Deliverables**: Domain glossary, language definition document
- **Activities**:
  - Compile initial domain vocabulary
  - Define terms with precise meaning
  - Validate terminology with domain experts
- **AI Prompt**: "Help me define the ubiquitous language for [bounded context name]. Define these terms: [list of terms] with precise, unambiguous definitions."

## Phase 2: Requirements and Specification

### Step 2.1: Product Requirements Definition
- **Objective**: Document functional and non-functional requirements
- **Deliverables**: Product Requirements Document (PRD)
- **Activities**:
  - Define user personas and stories
  - Specify functional requirements using domain language
  - Document non-functional requirements
- **AI Prompt**: "Create a PRD for [product name] following the template provided. Focus on [specific requirements] and use the ubiquitous language we've established."

### Step 2.2: Domain Model Elaboration
- **Objective**: Create detailed domain models
- **Deliverables**: Domain model diagrams, entity definitions
- **Activities**:
  - Identify domain entities, value objects, and aggregates
  - Define domain services and domain events
  - Model important business processes as domain services
- **AI Prompt**: "Based on our domain understanding, model the [subdomain name] by identifying entities, value objects, aggregates, and their relationships. Create a UML class diagram."

### Step 2.3: Technical Architecture Design
- **Objective**: Design the technical architecture
- **Deliverables**: System Architecture Document, Technical Design Document
- **Activities**:
  - Design high-level system architecture
  - Plan technology stack and infrastructure
  - Define API contracts and data models
- **AI Prompt**: "Design the technical architecture for [system name] using the architectural patterns we've discussed. Include component diagram and data flow."

## Phase 3: Implementation Planning

### Step 3.1: Test Strategy Creation
- **Objective**: Define testing approach and test specifications
- **Deliverables**: Test strategy document, test specifications
- **Activities**:
  - Create unit test specifications using TDD
  - Define integration and system test scenarios
  - Plan test data requirements
- **AI Prompt**: "Write unit test specifications for [component name] following TDD principles. Define what the component should do before implementing it."

### Step 3.2: Sprint Planning
- **Objective**: Plan iterative development cycles
- **Deliverables**: Sprint backlogs, development timeline
- **Activities**:
  - Break down requirements into sprint-sized stories
  - Estimate effort using domain knowledge
  - Plan sprint sequences with dependencies
- **AI Prompt**: "Help me break down the [feature requirements] into sprint-sized user stories for a [timeline] development period."

## Phase 4: Iterative Implementation

### Step 4.1: TDD Cycle Execution
- **Objective**: Implement features following TDD
- **Deliverables**: Code, tests, refactored solutions
- **Activities**:
  - Write failing tests first
  - Implement minimal code to pass tests
  - Refactor for quality and clarity
- **AI Prompt**: "I have a failing test [test code]. What is the minimal implementation needed to make it pass while maintaining domain integrity?"

### Step 4.2: Domain Model Refinement
- **Objective**: Refine domain models based on implementation insights
- **Deliverables**: Updated domain models, adjusted ubiquitous language
- **Activities**:
  - Refine models based on implementation challenges
  - Update ubiquitous language as understanding deepens
  - Adjust bounded context boundaries if needed
- **AI Prompt**: "Based on implementing [feature], I've discovered [insight]. How should I adjust the [domain model/part] to better reflect this understanding?"

### Step 4.3: Sprint Execution and Tracking
- **Objective**: Execute planned sprints effectively
- **Deliverables**: Working software, sprint tracking documents
- **Activities**:
  - Daily standups and progress tracking
  - Continuous integration and testing
  - Regular reviews and retrospectives
- **AI Prompt**: "Summarize the progress for [sprint number] and identify any blockers or adjustments needed for the next sprint."

## Phase 5: Integration and Validation

### Step 5.1: Integration Testing
- **Objective**: Ensure components work together
- **Deliverables**: Integration test results, system validation
- **Activities**:
  - Test interactions between bounded contexts
  - Validate cross-context workflows
  - Address integration issues
- **AI Prompt**: "Design integration tests for the interaction between [context 1] and [context 2], focusing on [specific integration points]."

### Step 5.2: Domain Validation
- **Objective**: Validate domain model accuracy
- **Deliverables**: Validation results, model adjustments
- **Activities**:
  - Validate with domain experts
  - Check business process accuracy
  - Adjust models based on validation
- **AI Prompt**: "How can I validate that our [domain model] accurately represents the real-world [business process] with domain experts?"

## Phase 6: Evolution and Refinement

### Step 6.1: Continuous Improvement
- **Objective**: Refine the system based on feedback
- **Deliverables**: Improved models, refactored code
- **Activities**:
  - Gather feedback from users and domain experts
  - Identify improvement opportunities
  - Plan next iteration of development
- **AI Prompt**: "Based on [feedback], how should we refine our [domain model/component] to better meet user needs?"

### Step 6.2: Documentation and Knowledge Transfer
- **Objective**: Maintain and transfer knowledge
- **Deliverables**: Updated documentation, knowledge base
- **Activities**:
  - Update architectural and design documents
  - Document lessons learned
  - Share domain knowledge with team
- **AI Prompt**: "Summarize the key learnings from implementing [feature/system] that would help future team members understand our domain and architecture decisions."
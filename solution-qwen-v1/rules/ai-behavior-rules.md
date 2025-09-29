# AI Behavior Rules

This document defines the rules and constraints that govern AI behavior during the Spec-Driven Development process. These rules ensure consistent, high-quality, and safe interactions throughout the development lifecycle.

## General AI Behavior Rules

### 1. Documentation Consistency
- Always follow the document naming conventions and structure guidelines
- Reference related documents to maintain traceability
- Use consistent formatting and templates
- Verify document relationships before finalizing

### 2. Domain-Driven Design Compliance
- Always prioritize domain concepts and ubiquitous language
- Model solutions around domain entities, value objects, and aggregates
- Respect bounded context boundaries
- Ensure consistency with established domain models

### 3. Test-Driven Development Compliance
- Always suggest writing tests before implementation code
- Focus on small, focused tests that verify one behavior at a time
- Ensure tests are readable and maintainable
- Verify that implementation follows the Red-Green-Refactor cycle

### 4. Quality Standards
- Maintain clean, readable code following established patterns
- Ensure proper error handling and security considerations
- Apply appropriate design patterns consistently
- Verify performance and scalability requirements are met

## Phase-Specific Rules

### Project Initialization (init) Rules
- For greenfield projects: Focus on discovery and visioning
- For brownfield projects: Focus on analysis and understanding existing systems
- Always identify domain experts and stakeholders
- Establish clear vision and success metrics
- Document all identified bounded contexts and ubiquitous language terms

### PRD Creation (prd) Rules
- Always create requirements that are testable and specific
- Use domain language consistently throughout
- Focus on user value and business objectives
- Include both functional and non-functional requirements
- Define clear acceptance criteria for all features

### Design (design) Rules
- Always design for testability from the beginning
- Align technical solutions with domain models
- Consider all quality attributes (performance, security, scalability)
- Plan for maintainability and evolution
- Design with security considerations from the start

### Planning (plan) Rules
- Always break work into manageable, trackable tasks
- Follow TDD principles in task definition
- Plan for quality assurance and testing activities
- Consider dependencies and resource constraints
- Establish clear success criteria and metrics

### Execution (execute) Rules
- Always follow the TDD cycle: Red, Green, Refactor
- Maintain focus on one requirement at a time
- Keep implementation aligned with domain concepts
- Update documentation and tracking continuously
- Verify all tests pass before moving to next task

## Communication Rules

### 1. Clarity and Specificity
- Provide specific, actionable guidance
- Explain the "why" behind recommendations
- Use clear, unambiguous language
- Avoid technical jargon when speaking with non-technical stakeholders

### 2. Context Awareness
- Always consider the current phase of development
- Reference relevant documents and decisions made previously
- Understand the audience and adjust communication style
- Maintain awareness of project constraints and context

### 3. Progressive Disclosure
- Start with high-level concepts before diving into details
- Ask clarifying questions before making assumptions
- Provide options when appropriate, explaining trade-offs
- Verify understanding before proceeding

## Safety and Constraint Rules

### 1. Information Handling
- Never store or log sensitive information provided by users
- Be cautious about code modifications, always verify with user
- Validate assumptions before proceeding with significant actions
- Clarify ambiguous requirements rather than making assumptions

### 2. Modification Constraints
- Always explain the impact of proposed changes
- Verify that changes align with established architecture
- Ensure changes don't break existing functionality
- Follow version control best practices

### 3. Validation Requirements
- Always validate that requirements are clear and testable
- Verify that designs address all specified requirements
- Ensure implementation matches design specifications
- Confirm that changes maintain domain alignment

## Quality Assurance Rules

### 1. Testing Standards
- All code suggestions must include appropriate tests
- Test coverage should meet established minimums
- Performance and security tests should be considered
- Test names and structures should be clear and maintainable

### 2. Code Quality
- Apply clean code principles consistently
- Use appropriate design patterns
- Follow established coding standards
- Ensure code is maintainable and readable

### 3. Security Standards
- Consider security implications in all design decisions
- Apply security best practices consistently
- Verify that security requirements are met
- Include security testing in test plans

## Error Handling Rules

### 1. Clarification Requirements
- Ask for clarification when requirements are ambiguous
- Seek additional information before making major decisions
- Confirm understanding before proceeding with significant work
- Verify that proposed solutions align with user intent

### 2. Feedback Integration
- Accept and integrate feedback constructively
- Adjust approach based on user preferences
- Learn from corrections and improve future responses
- Acknowledge limitations and seek guidance when needed

### 3. Mistake Recovery
- Acknowledge errors when they occur
- Provide correct information when mistakes are made
- Explain the correct approach clearly
- Take steps to ensure similar errors don't occur

## Domain-Specific Constraints

### 1. Ubiquitous Language Enforcement
- Use domain terms consistently and correctly
- Correct usage when domain language is violated
- Suggest improvements to the ubiquitous language when needed
- Maintain alignment with established domain concepts

### 2. Bounded Context Respect
- Respect boundaries between different contexts
- Use appropriate language in each context
- Handle integration concerns appropriately
- Maintain consistency within each context

### 3. Domain Model Integrity
- Preserve domain invariants and business rules
- Ensure entity and aggregate boundaries are maintained
- Respect domain logic and validation rules
- Maintain consistency with established models

## Documentation Rules

### 1. Traceability Maintenance
- Maintain links between related documents
- Update cross-references when documents change
- Ensure all documents have proper metadata
- Follow document lifecycle procedures

### 2. Version Management
- Follow established versioning conventions
- Maintain backward compatibility in references
- Update related documents when changes occur
- Follow proper deprecation procedures

### 3. Quality Standards for Documents
- Ensure documents have clear purpose and scope
- Verify documents follow established templates
- Include all required metadata and relationships
- Maintain readability and accessibility

## Review and Validation Rules

Before providing any output:

### 1. Consistency Check
- Verify alignment with previous decisions and documents
- Check for domain language consistency
- Confirm design alignment with requirements
- Validate document relationships

### 2. Quality Check
- Verify adherence to TDD principles
- Check code quality and test coverage
- Confirm security and performance considerations
- Validate architectural alignment

### 3. Completeness Check
- Ensure all required information is provided
- Verify that recommendations are actionable
- Confirm that next steps are clear
- Validate that dependencies are addressed

These rules should be applied consistently throughout all interactions during the Spec-Driven Development process to ensure high-quality, domain-aligned, and well-documented software development.
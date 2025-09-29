# Domain-Driven Design Integration

This document explains how to apply Domain-Driven Design (DDD) principles within the Spec-Driven Development kit to ensure proper domain modeling and design.

## Core DDD Concepts

### Ubiquitous Language
The Ubiquitous Language should be consistently applied across all documents:

- Use domain terms consistently in all documentation
- Maintain a glossary of domain terms that all documents reference
- Ensure that technical implementations use the same terminology as domain experts

### Bounded Contexts
Each major document should clearly identify which Bounded Context it belongs to:

```
**Bounded Context**: [Name of Bounded Context]
**Context Map**: [Relationship to other contexts]
**Domain Experts**: [Names of domain experts]
```

### Domain Model
Documents should reflect the domain model by:

- Using entity and aggregate terminology consistently
- Representing domain events in design documents
- Modeling business processes as domain services

## Document Structure for DDD

### Domain Vision Document
- Define the core domain and subdomains
- Identify core capabilities and competitive advantages
- Establish the domain scope and boundaries

### Context Map Document
- Map relationships between bounded contexts
- Define integration patterns between contexts
- Specify shared models and anti-corruption layers

### Domain Model Document
- Describe entities, value objects, and aggregates
- Define domain services and domain events
- Specify domain invariants and business rules

### Ubiquitous Language Document
- Define terms with domain-specific meanings
- Include examples of proper usage
- Cross-reference terms to implementation details

## Applying DDD in Each Phase

### Project Initialization (init)
- Identify domain experts and stakeholders
- Gather initial domain knowledge
- Establish initial bounded contexts
- Create preliminary ubiquitous language

### PRD Creation (prd)
- Focus on domain problems rather than technical solutions
- Use domain language exclusively
- Define success in domain terms
- Identify domain events that trigger business processes

### Solution Design (design)
- Model the domain with proper DDD patterns
- Design aggregates to maintain domain consistency
- Plan domain events and their relationships
- Create domain services for business logic

### Task Planning (plan)
- Plan around domain concepts and aggregates
- Ensure tasks maintain aggregate boundaries
- Plan for domain event handling
- Account for domain complexity in estimates

### Task Execution (execute)
- Implement domain models with proper DDD patterns
- Use the ubiquitous language in code
- Ensure domain invariants are maintained
- Properly handle domain events

## Domain Storytelling

Use domain storytelling techniques to drive document creation:

1. **Narrate** business processes in domain language
2. **Visualize** domain events and decisions
3. **Identify** aggregates and their boundaries
4. **Model** domain behaviors and invariants

## Design Patterns in Documentation

### Entity Definition
When defining entities in documents:
- Specify unique identity characteristics
- Define attributes that describe the entity
- Identify the aggregate root that contains the entity

### Value Object Definition
When defining value objects:
- Specify value-based equality
- Define immutability characteristics
- Identify where the value object is used

### Aggregate Design
When designing aggregates:
- Identify aggregate boundaries for consistency
- Define aggregate root responsibilities
- Specify lifecycle management
- Plan for eventual consistency between aggregates

### Domain Event Documentation
When documenting domain events:
- Specify the triggering action
- Define the event structure
- Identify event consumers and handlers
- Plan for event evolution

## Validation Through Domain Experts

### Review Process
- Engage domain experts in document reviews
- Verify that documents use proper domain language
- Validate that design decisions align with domain needs
- Ensure that implementation plans reflect domain realities

### Feedback Integration
- Incorporate domain expert feedback into documents
- Update ubiquitous language based on new insights
- Refine domain models based on expert input
- Adjust design decisions based on domain knowledge

## Integration with TDD

DDD documentation should support Test-Driven Development by:

- Defining clear acceptance criteria based on domain rules
- Creating test scenarios that reflect domain behaviors
- Ensuring tests use domain language consistently
- Validating domain invariants through tests

## References to DDD Literature

When creating documents, consider principles from key DDD resources:

- "Domain-Driven Design" by Eric Evans
- "Implementing Domain-Driven Design" by Vaughn Vernon
- "Domain Modeling Made Functional" by Scott Wlaschin
- "Event Storming" by Alberto Brandolini

These sources provide patterns and best practices that should inform document content and structure.

## Domain Model Consistency

### Across Documents
- Ensure entities are described consistently across all documents
- Maintain consistent aggregate boundaries
- Keep business rules aligned across contexts
- Synchronize ubiquitous language definitions

### Evolution Management
- Plan for domain model evolution in documentation
- Maintain version history of model changes
- Track impact of model changes on related documents
- Coordinate updates across related documentation
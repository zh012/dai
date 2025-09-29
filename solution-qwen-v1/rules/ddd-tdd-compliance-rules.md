# DDD and TDD Compliance Rules

This document defines specific rules to ensure strict adherence to Domain-Driven Design (DDD) and Test-Driven Development (TDD) principles throughout the AI's behavior during the Spec-Driven Development process.

## Domain-Driven Design Compliance Rules

### 1. Ubiquitous Language Rules
- **Rule DDD-1**: Always use domain terms as defined in the ubiquitous language glossary
- **Rule DDD-2**: Correct any usage of non-domain language and suggest the proper domain term
- **Rule DDD-3**: When new domain terms are introduced, define them properly in context
- **Rule DDD-4**: Verify all documents use consistent domain language before completion
- **Rule DDD-5**: Ask for clarification when domain terminology is ambiguous or missing

### 2. Entity and Value Object Rules
- **Rule DDD-6**: Distinguish between entities (with identity) and value objects (defined by attributes)
- **Rule DDD-7**: Ensure entities have proper identity management and lifecycle
- **Rule DDD-8**: Value objects must be immutable and implement value-based equality
- **Rule DDD-9**: Use value objects to encapsulate domain concepts that are defined by their characteristics
- **Rule DDD-10**: Properly validate value object constraints during creation

### 3. Aggregate Design Rules
- **Rule DDD-11**: Define clear aggregate boundaries that maintain domain consistency
- **Rule DDD-12**: Only reference other aggregates by their identity (not direct object references)
- **Rule DDD-13**: Ensure each aggregate has a single aggregate root responsible for its consistency
- **Rule DDD-14**: Aggregate root must enforce all invariants within the aggregate boundary
- **Rule DDD-15**: Design aggregates to minimize transaction boundaries while preserving consistency

### 4. Domain Service Rules
- **Rule DDD-16**: Use domain services only when operations don't naturally belong to an entity or value object
- **Rule DDD-17**: Domain services must contain domain logic and not technical infrastructure logic
- **Rule DDD-18**: Domain services should be stateless and focused on specific domain operations
- **Rule DDD-19**: Clearly distinguish domain services from application services

### 5. Domain Event Rules
- **Rule DDD-20**: Domain events should represent something that has already happened in the domain
- **Rule DDD-21**: Domain events must be named in past tense and reflect significant business moments
- **Rule DDD-22**: Domain events should contain enough information for event consumers
- **Rule DDD-23**: Use domain events to communicate between aggregates and bounded contexts
- **Rule DDD-24**: Ensure domain events are immutable and contain only necessary data

### 6. Bounded Context Rules
- **Rule DDD-25**: Respect bounded context boundaries in all design and implementation decisions
- **Rule DDD-26**: Use appropriate integration patterns between bounded contexts (e.g., Anti-Corruption Layer)
- **Rule DDD-27**: Each bounded context should have its own ubiquitous language for context-specific terms
- **Rule DDD-28**: Model relationships between bounded contexts using the Context Map
- **Rule DDD-29**: Prevent domain models from leaking across bounded context boundaries

## Test-Driven Development Compliance Rules

### 1. TDD Cycle Rules
- **Rule TDD-1**: Always write a failing test before writing implementation code
- **Rule TDD-2**: Write the minimum implementation code necessary to pass the test
- **Rule TDD-3**: Only refactor after tests pass, not before
- **Rule TDD-4**: Never write implementation code without a failing test to drive it
- **Rule TDD-5**: Run all tests before and after refactoring to ensure no regressions

### 2. Test Quality Rules
- **Rule TDD-6**: Tests must be fast, reliable, and readable
- **Rule TDD-7**: Tests must be independent and not have side effects
- **Rule TDD-8**: Follow AAA (Arrange, Act, Assert) pattern for test structure
- **Rule TDD-9**: Test names must clearly describe the behavior being tested
- **Rule TDD-10**: Tests should only fail for one reason (test one behavior per test)

### 3. Test Coverage Rules
- **Rule TDD-11**: Aim for high test coverage but prioritize critical paths and business logic
- **Rule TDD-12**: Include tests for edge cases and error conditions
- **Rule TDD-13**: Test both "happy path" and failure scenarios
- **Rule TDD-14**: Ensure tests validate business rules and domain invariants
- **Rule TDD-15**: Include performance tests for critical paths when specified

### 4. Domain Testing Rules
- **Rule TDD-16**: Domain model tests must verify domain invariants and business rules
- **Rule TDD-17**: Test aggregate boundaries and consistency rules
- **Rule TDD-18**: Verify that domain events are properly raised during significant operations
- **Rule TDD-19**: Test value object validation and immutability
- **Rule TDD-20**: Include tests for domain service operations and business logic

### 5. Test-Driven Design Rules
- **Rule TDD-21**: Design should be influenced by testability requirements
- **Rule TDD-22**: Create seams in design to allow for proper testing
- **Rule TDD-23**: Favor composition over inheritance to improve testability
- **Rule TDD-24**: Design interfaces to be easily mockable for testing
- **Rule TDD-25**: Ensure that the design allows for verification through tests

## Combined DDD-TDD Rules

### 1. Domain-Driven Testing Rules
- **Rule DDDTDD-1**: Tests should verify domain behavior using domain language and concepts
- **Rule DDDTDD-2**: Domain test scenarios should be based on real business use cases
- **Rule DDDTDD-3**: Use Specification by Example pattern when describing domain tests
- **Rule DDDTDD-4**: Test scenarios should be written in Given-When-Then format using domain language
- **Rule DDDTDD-5**: Focus tests on the domain's external behavior rather than internal implementation

### 2. Design Quality Rules
- **Rule DDDTDD-6**: Domain models must be designed to be easily testable
- **Rule DDDTDD-7**: Domain entities should not have tight coupling that makes them hard to test
- **Rule DDDTDD-8**: Domain services should be stateless to enable easy testing
- **Rule DDDTDD-9**: Aggregate roots should provide methods that make them easy to test
- **Rule DDDTDD-10**: Domain events should be easily observable and verifiable in tests

### 3. Behavior Verification Rules
- **Rule DDDTDD-11**: Verify domain behavior rather than implementation details
- **Rule DDDTDD-12**: Tests should verify domain invariants are maintained
- **Rule DDDTDD-13**: Verify that domain rules are enforced through the public interface
- **Rule DDDTDD-14**: Test aggregate boundaries by verifying what external objects can access
- **Rule DDDTDD-15**: Validate that domain concepts are properly encapsulated

## Enforcement Mechanisms

### 1. Self-Check Rules
Before providing any design or implementation guidance, the AI must verify:
- [ ] Domain concepts are used correctly (DDD compliance)
- [ ] TDD cycle is followed (TDD compliance)
- [ ] Domain language is consistent with established terms
- [ ] Design decisions support testability requirements

### 2. Correction Rules
When DDD or TDD violations are detected:
- [ ] Identify the specific rule that was violated
- [ ] Explain why the rule exists and its importance
- [ ] Provide the correct approach following the rule
- [ ] Suggest how to align with proper DDD/TDD practices

### 3. Verification Rules
During each interaction, verify:
- Domain concepts are applied correctly
- TDD principles are being followed
- Design decisions support both domain integrity and testability
- Implementation aligns with domain models

## Reference Standards

When in doubt about compliance, refer to these authoritative sources:
- "Domain-Driven Design" by Eric Evans
- "Implementing Domain-Driven Design" by Vaughn Vernon
- "Test-Driven Development" by Kent Beck
- "Growing Object-Oriented Software, Guided by Tests" by Steve Freeman and Nat Pryce
- "Clean Architecture" by Robert C. Martin

These rules should be applied consistently throughout all AI interactions during the Spec-Driven Development process to ensure proper DDD and TDD practices are followed.
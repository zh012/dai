# Quick Start Guide - Spec-Driven Development Kit

## Overview
This guide provides a quick introduction to getting started with the Spec-Driven Development (SDD) kit. The SDD kit helps you develop software following Domain-Driven Design (DDD) and Test-Driven Development (TDD) principles with AI assistance.

## Prerequisites
- Basic understanding of software development concepts
- Access to an AI assistant capable of following structured prompts
- Understanding that this kit emphasizes DDD and TDD practices

## Getting Started

### Step 1: Understand the Five Phases
The SDD kit guides you through five development phases:

1. **Initialization (`init`)** - Set up your project vision and domain understanding
2. **PRD Creation (`prd`)** - Define product requirements in domain language
3. **Design (`design`)** - Create technical solutions aligned with domain models
4. **Planning (`plan`)** - Break work into trackable tasks following TDD
5. **Execution (`execute`)** - Implement following TDD practices

### Step 2: Project Initialization
To start a new project:

```
Use the 'init' command to begin your project:
- For greenfield projects: AI will help clarify vision and domain concepts
- For brownfield projects: AI will analyze existing systems to understand current state
```

The AI will act as a Product Visionary and Domain Expert, helping you create:
- Product vision and goals
- Initial system architecture
- Bounded context map
- Domain glossary (ubiquitous language)

### Step 3: Create Product Requirements
Once initialization is complete, use the 'prd' command:
- Define user personas and needs
- Create user stories with acceptance criteria
- Specify functional and non-functional requirements
- Define success metrics

### Step 4: Design Technical Solution
With requirements established, use the 'design' command:
- Create a domain-driven technical architecture
- Design aggregate structures and interfaces
- Plan for testability from the start
- Consider security, performance, and scalability

### Step 5: Plan Implementation
Before coding, use the 'plan' command:
- Break design into implementable tasks
- Follow TDD principles in task definition
- Plan for testing and quality assurance
- Establish resource allocation and timeline

### Step 6: Execute Implementation
Finally, use the 'execute' command:
- Follow TDD practices (Red, Green, Refactor)
- Maintain domain alignment during implementation
- Update execution documentation as you progress
- Track progress against your plan

## Key Principles to Remember

### Domain-Driven Design
- Use the established ubiquitous language consistently
- Model your solution around domain concepts
- Design proper aggregate boundaries
- Respect bounded context boundaries

### Test-Driven Development
- Write tests first to drive your implementation
- Implement just enough to pass the test
- Refactor continuously while keeping tests passing
- Design for testability from the beginning

### Documentation
- All documents follow the naming convention: `{TYPE}-{YYYY}-{NNN}`
- Documents are linked to maintain traceability
- Use templates to ensure consistency
- Keep related documents synchronized

## Command Reference

### `init` - Project Initialization
- Purpose: Establish project vision and domain understanding
- Output: INIT document with vision, architecture, context map, and glossary

### `prd` - Product Requirements Document
- Purpose: Create comprehensive requirements in domain language
- Output: PRD document with user stories, requirements, and acceptance criteria

### `design` - Technical Design
- Purpose: Create technical solution aligned with domain models
- Output: DESIGN document with architecture, components, and testing strategy

### `plan` - Task Planning
- Purpose: Break work into trackable tasks following TDD
- Output: PLAN document with tasks, timeline, and resource allocation

### `execute` - Task Execution
- Purpose: Implement following TDD practices while maintaining domain alignment
- Output: EXEC document with implementation log and progress tracking

## Best Practices

### For Each Phase
- Review related documents before starting
- Ensure consistency with domain concepts
- Maintain traceability between documents
- Validate that outputs meet quality standards

### Communication with AI
- Be specific about your requirements
- Use domain language when describing problems
- Ask for clarification when needed
- Verify AI output for accuracy and alignment

### Quality Assurance
- Apply DDD and TDD principles consistently
- Maintain high test coverage standards
- Review code and design for quality
- Validate implementation against requirements

## Troubleshooting

### If Requirements Are Unclear
- Use the AI to help explore domain concepts
- Ask for examples of similar requirements
- Request clarification of domain terms

### If Design Seems Too Complex
- Break the problem into smaller domain concepts
- Focus on one bounded context at a time
- Refer back to established domain models

### If Implementation Is Challenging
- Revisit the design document for clarity
- Ensure you're following TDD practices
- Verify domain model alignment

## References

For deeper understanding of the principles applied in this kit:

- **DDD**: "Domain-Driven Design" by Eric Evans
- **TDD**: "Test-Driven Development" by Kent Beck
- **Clean Code**: "Clean Code" by Robert C. Martin

## Next Steps

Start with the `init` command if beginning a new project, or skip to the phase that matches your current needs. Remember that this is an iterative process - you may need to return to earlier phases as you learn more about your domain or requirements.

For more detailed information about any phase or component of the SDD kit, refer to the specific documents in the `docs/`, `prompts/`, `templates/`, and `rules/` directories.
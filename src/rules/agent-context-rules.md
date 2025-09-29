# Agent Context Rules

**Document ID:** RL-2025-09-28-001
**Purpose:** Rules for AI agents using Context Extractor in SDD Kit workflows
**Type:** Agent Behavior Rules
**Parent Document:** [[rules/document-linking-rules.md]] (Document Linking Rules)
**Linked Documents:** [[tools/README.md]] (Context Extractor Tool README)

## Overview

These rules govern how AI agents within the SDD Kit framework must use the Context Extractor tool to prepare relevant documentation context for their tasks. Consistent usage ensures traceability, efficiency, and quality across all development phases.

## Core Principles

### 1. Context-First Approach
✅ **MUST** use Context Extractor before starting any substantive work
✅ **MUST** provide relevant document IDs in every extraction request
✅ **MUST** specify appropriate command type for the task phase
❌ **NEVER** work without proper context from project documents

### 2. Relevance-Driven Extraction
✅ **MUST** select focus areas aligned with the task at hand
✅ **SHOULD** use multiple documents when complexity warrants
✅ **SHOULD** balance comprehensiveness with token efficiency
❌ **NEVER** request irrelevant content that increases token usage unnecessarily

### 3. Traceable Workflows
✅ **MUST** maintain link references to source documents
✅ **MUST** document which contexts were used for decisions
✅ **SHOULD** cross-reference multiple documents when they interact
❌ **NEVER** break the documentation traceability chain

## Command-Specific Rules

### `/init` - System Initialization Agent
#### Applicable Focus Areas
- `requirements`, `constraints`, `vision`, `context-map`
- `domain-analysis`, `bounded-context`, `ubiquitous-language`

#### Document Selection Criteria
✅ **MUST** extract from existing project documentation (if brownfield)
✅ **MUST** identify gaps requiring new documentation
✅ **SHOULD** analyze cross-context relationships in DDD projects

#### Quality Checks
- Verify document completeness before proceeding
- Validate traceability chain between related documents
- Ensure context supports domain modeling decisions

**Example Usage:**
```bash
uv run extract-context.py --document-ids MM-2025-01-01-001 --command init \
  --focus-areas requirements context-map objectives
```

### `/prd` - Product Manager Agent
#### Applicable Focus Areas
- `requirements`, `acceptance`, `personas`, `user-journeys`
- `success-criteria`, `priorities`, `assumptions`

#### Document Dependencies
✅ **MUST** extract architecture constraints if any exist
✅ **MUST** include existing technical requirements
✅ **SHOULD** reference business process documents

#### Context Validation
- Verify requirements align with technical constraints
- Ensure user stories follow INVEST criteria
- Validate acceptance criteria are measurable and testable

**Example Usage:**
```bash
uv run extract-context.py --document-ids ARCH-2025-01-01-001 \\
  UB-2025-01-01-001 --command prd --focus-areas constraints requirements
```

### `/design` - Technical Architect Agent
#### Applicable Focus Areas
- `tech_stack`, `patterns`, `constraints`, `integration`
- `non_functional`, `security`, `performance`

#### Multi-Document Requirements
✅ **MUST** include PRD for functional requirements
✅ **MUST** include constraints from architecture documents
✅ **SHOULD** reference existing similar patterns in project

#### Design Decision Support
- Extract technology evaluation criteria from existing documents
- Identify architectural patterns already in use
- Understand integration points from context mapping

**Example Usage:**
```bash
uv run extract-context.py --document-ids PRD-2025-01-01-001 \\
  ARCH-2024-12-15-001 CM-2025-01-01-001 --command design \
  --focus-areas patterns constraints integration
```

### `/plan` - Project Coordinator Agent
#### Applicable Focus Areas
- `tasks`, `dependencies`, `capacity`, `timeline`
- `risks`, `resources`, `priorities`

#### Planning Context Guidelines
✅ **MUST** extract task definitions from design documents
✅ **MUST** include dependency information
✅ **SHOULD** reference historical sprint data if available

#### Priority and Risk Assessment
- Identify technical risks from architecture documents
- Extract capacity constraints from team availability
- Reference previous sprint velocities and estimations

**Example Usage:**
```bash
uv run extract-context.py --document-ids DES-2025-01-01-001 \\
  SPR-2025-01-22-001 --command plan --focus-areas dependencies risks
```

### `/execute` - TDD Co-pilot Agent
#### Applicable Focus Areas
- `implementation`, `testing`, `acceptance`, `quality`
- `code-standards`, `patterns`, `integration`

#### Implementation Context Rules
✅ **MUST** extract acceptance criteria for current task
✅ **MUST** include technical patterns from design documents
✅ **SHOULD** reference quality standards and criteria

#### Test-Driven Development Support
- Focus on acceptance criteria for test creation
- Extract integration points for testing considerations
- Include performance requirements for optimization guidance

**Example Usage:**
```bash
uv run extract-context.py --document-ids PRD-2025-01-01-001 \\
  DES-2025-01-01-001 --command execute --task-id DEV-001 \
  --focus-areas acceptance testing quality
```

## Error Handling Rules

### Document Not Found
1. **MUST** provide meaningful error message to user
2. **SHOULD** suggest possible document IDs based on pattern
3. **MAY** offer to create missing document if appropriate

### Insufficient Context
1. **MUST** log which information is missing
2. **SHOULD** request additional context or clarification
3. **MAY** work with partial context while noting limitations

### Excessive Context Size
1. **MUST** warn when approaching token limits
2. **SHOULD** suggest more focused extraction
3. **MAY** split extraction into multiple requests

## Quality Standards

### Content Relevance
- Extracted content must directly support the current task
- All referenced documents should be current and approved
- Focus areas should be clearly aligned with agent expertise

### Link Integrity
- All document references must use correct linking format
- Extracted content should preserve traceability relationships
- Cross-references between documents should be maintained

### Efficiency Standards
- Minimize redundant extractions across similar tasks
- Balance comprehensiveness with token efficiency
- Prefer focused extraction over comprehensive when appropriate

## Usage Patterns

### Single Document Extraction
Use for focused tasks requiring specific document insight:
```bash
uv run extract-context.py --document-ids PRD-2025-01-01-001 --command prd
```

### Multi-Document Synthesis
Use for complex decisions requiring multiple perspectives:
```bash
uv run extract-context.py --document-ids PRD-2025-01-01-001 ARCH-2025-01-01-001 \
  DES-2025-01-01-001 --command design --focus-areas integration patterns
```

### Task-Specific Focus
Use when working on specific implementation or planning:
```bash
uv run extract-context.py --document-ids SPR-2025-01-01-001 \\
  --command execute --task-id DEV-007 --focus-areas implementation testing
```

## Maintenance and Updates

### Regular Reviews
- **DAILY**: Validate extraction patterns are meeting agent needs
- **WEEKLY**: Review usage statistics and optimize focus areas
- **MONTHLY**: Update extraction rules based on new document patterns

### Version Compatibility
- Maintain backward compatibility with existing agent workflows
- Document changes to extraction logic and focus areas
- Provide migration guidance for deprecated patterns

### Performance Monitoring
- Track extraction time and token usage patterns
- Monitor error rates and adjust rules accordingly
- Optimize search paths and document discovery logic

## Integration Examples

### Brownfield Analysis Pattern
When analyzing existing codebases:
```bash
# Extract architectural context for analysis
uv run extract-context.py --document-ids ARCH-2025-01-01-001 \\
  CM-2025-01-01-001 --command init --focus-areas context-map patterns
```

### Cross-Context Integration
When multiple bounded contexts interact:
```bash
# Extract integration context for multi-context tasks
uv run extract-context.py --document-ids CM-BC-001 CM-BC-002 \\
  ARCH-2025-01-01-001 --command design --focus-areas integration constraints
```

### Progressive Refinement
When moving between development phases:
```bash
# Extract requirements for design phase
uv run extract-context.py --document-ids PRD-2025-01-01-001 --command design \
  --focus-areas patterns requirements

# Then extract design for implementation
uv run extract-context.py --document-ids DES-2025-01-01-001 --command execute \
  --task-id DEV-123 --focus-areas implementation testing
```

## Compliance and Validation

### Required Usage Auditing
- **LOG** every extraction with document IDs and focus areas used
- **TRACK** context size and token consumption for optimization
- **VALIDATE** extracted content supports decision-making process

### Quality Assurance
- **VERIFY** document references use correct linking format per [[rules/document-linking-rules.md]]
- **CONFIRM** all referenced documents follow naming conventions
- **ENSURE** extracted context maintains traceability requirements

---

**Version:** 1.0.0
**Status:** ACTIVE - All agents must comply with these rules
**Last Updated:** 2025-09-28
**Next Review:** 2025-10-28
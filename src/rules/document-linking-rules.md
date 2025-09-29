# Document Linking and Relationship Rules

## Linking Strategy Overview

### Link Network Architecture
Documents form a connected graph where each document type has specific relationships to other document types. Links must be bidirectional when appropriate and always include context.

### Link Types
1. **Required Links**: Must be present for document completeness
2. **Supporting Links**: Provide additional context
3. **Traceability Links**: Show requirement flow through development lifecycle
4. **Reference Links**: Point to external resources or standards

## Link Conventions

### Link Format Standards
```
✅ CORRECT FORMAT:
[[PRD-2025-01-15-001]] - Links to Product Requirements Document
[[ARCH-2025-01-15-001#section-3]] - Links to specific section
[[UL-2025-01-15-001#term-Account]] - Links to specific term definition

❌ INCORRECT FORMATS:
[[PRD]] - Missing document ID
[[PRD-2025-01-15-001#]] - Empty section reference
[PRD-2025-01-15-001] - Missing double brackets
```

### Link Context Requirements
```
✅ GOOD: "As specified in [[PRD-2025-01-15-001#section-2]], the user authentication requirements..."
✅ GOOD: "This architecture decision aligns with the patterns described in [[ARCH-2025-01-15-001#section-3.2]]"

❌ POOR: "See [[PRD-2025-01-15-001]] for details..."
❌ POOR: "As mentioned in the PRD document..." (no link)
```

## Document Class Relationships

### Product Requirements Document (PRD) Links
```yaml
Required Links:
  - RTM (Requirements Traceability Matrix)
  - ARCH (Architecture Document)

Optional Links:
  - CM (Context Map - if DDD project)
  - UL (Ubiquitous Language - if DDD project)
  - External requirements specifications

Incoming Links (from):
  - None (PRD is typically top-level)

Example:
# PRD-2025-01-15-001 Product Requirements Document
## Links
- **Requirements Traceability**: [[RTM-2025-01-15-001]]
- **Architecture Reference**: [[ARCH-2025-01-15-001]]
- **Context Map**: [[CM-2025-01-15-001]]
```

### Architecture Document (ARCH) Links
```yaml
Required Links:
  - PRD (Product Requirements Document)
  - CM (Context Map - if applicable)
  - UL (Ubiquitous Language - if applicable)

Optional Links:
  - Reference architecture documents
  - Technology evaluation documents
  - Previous architecture decisions

Incoming Links (from):
  - PRD (requires architecture reference)
  - DES (references architecture)

Example:
# ARCH-2025-01-15-001 System Architecture Document
## Links
- **Requirements Source**: [[PRD-2025-01-15-001]]
- **Context Mapping**: [[CM-2025-01-15-001]]
- **Ubiquitous Language**: [[UL-2025-01-15-001]]
- **Technical Design Reference**: [[DES-2025-01-15-001]]
```

### Technical Design Document (DES) Links
```yaml
Required Links:
  - PRD (requirements source)
  - ARCH (architecture guidelines)
  - SPR (sprint requirements)

Optional Links:
  - Previous design iterations
  - Technology evaluation documents
  - Performance benchmarking results

Incoming Links (from):
  - ARCH (design section references)
  - SPR (links to design tasks)
  - IMP (implementation follows design)

Example:
# DES-2025-01-15-001 Technical Design Document
## Links
- **Requirements**: [[PRD-2025-01-15-001#section-4]]
- **Architecture**: [[ARCH-2025-01-15-001#section-3.2]]
- **Implementation Plan**: [[SPR-2025-01-15-001]]
- **Requirements Traceability**: [[RTM-2025-01-15-001]]
```

### Sprint Planning Document (SPR) Links
```yaml
Required Links:
  - PRD (business requirements)
  - DES (technical design)
  - IMP (implementation tracking)

Optional Links:
  - Previous sprint documents
  - Team capacity planning
  - Retrospective action items

Incoming Links (from):
  - DES (contains design reference)
  - IMP (tracks sprint implementation)

Example:
# SPR-2025-01-22-001 Sprint Planning Document
## Links
- **Requirements Source**: [[PRD-2025-01-15-001#section-3]]
- **Technical Design**: [[DES-2025-01-15-001]]
- **Implementation Tracking**: [[IMP-2025-01-22-001]]
- **Previous Sprint**: [[SPR-2025-01-08-001]]
```

### Implementation Document (IMP) Links
```yaml
Required Links:
  - SPR (sprint requirements)
  - DES (design specifications)
  - RTM (requirements traceability)

Optional Links:
  - Code repository
  - Deployment documentation
  - Performance monitoring results

Incoming Links (from):
  - SPR (implementation tracking)
  - RTM (traceability validation)

Example:
# IMP-2025-01-22-001 Implementation Document
## Links
- **Sprint Plan**: [[SPR-2025-01-22-001]]
- **Technical Design**: [[DES-2025-01-15-001]]
- **Requirements Tracing**: [[RTM-2025-01-15-001]]
- **Repository**: https://github.com/org/repo
```

### Context Map (CM) Links
```yaml
Required Links:
  - ARCH (architecture reference)
  - UL (ubiquitous language definitions)

Optional Links:
  - Individual bounded context specifications
  - Integration pattern documentation

Incoming Links (from):
  - ARCH (context reference)
  - UL (term definitions by context)

Example:
# CM-2025-01-15-001 Context Map Document
## Links
- **Architecture Foundation**: [[ARCH-2025-01-15-001#section-3]]
- **Language Definitions**: [[UL-2025-01-15-001]]
- **Bounded Contexts**: [[BC-001-AccountContext]], [[BC-002-BillingContext]]
```

### Ubiquitous Language (UL) Links
```yaml
Required Links:
  - CM (context mapping)
  - ARCH (architectural context)

Optional Links:
  - Source documents defining terms
  - Implementation code showing term usage
  - Test cases demonstrating term behavior

Incoming Links (from):
  - CM (reference to language consistency)
  - References to specific term definitions

Example:
# UL-2025-01-15-001 Ubiquitous Language Glossary
## Links
- **Context Map**: [[CM-2025-01-15-001]]
- **Architecture**: [[ARCH-2025-01-15-001#section-3]]
```

### Requirements Traceability Matrix (RTM) Links
```yaml
Required Links:
  - ALL related documents based on traceability

Type-Specific Links:
  - PRD (requirement sources)
  - DES (design implementation)
  - IMP (implementation validation)

Incoming Links (from):
  - PRD (traceability validation)
  - IMP (traceability confirmation)

Example:
# RTM-2025-01-15-001 Requirements Traceability Matrix
## Links
- **Requirements**: [[PRD-2025-01-15-001#section-4]]
- **Design**: [[DES-2025-01-15-001#section-3]]
- **Implementation**: [[IMP-2025-01-22-001]]
- **Sprint**: [[SPR-2025-01-22-001]]
```

## Link Validation Rules

### Automated Validation Checks
1. **Link Existence**: All referenced documents must exist
2. **Link Format**: Correct double-bracket format with optional section
3. **Document Status**: Linked documents should be in appropriate status
4. **Circular Dependencies**: Detect and prevent circular references
5. **Bidirectional Links**: Ensure important relationships are reciprocal

### Manual Review Criteria
1. **Context Appropriateness**: Links add meaningful context
2. **Update Requirements**: Links need updating when target changes
3. **Completeness**: All required links are present
4. **Redundancy**: Avoid excessive linking that clutters reading

## Link Maintenance Guidelines

### Document Updates
```
When Document A changes, check:
1. All outgoing links from A still valid
2. All incoming links to A still relevant
3. Link context in referring documents still accurate
4. Cross-references in linked documents need updates
```

### Version Management
```
Document Version Update Process:
1. Major versions: Review all linked relationships
2. Minor versions: Check critical path links
3. Patch versions: Verify no broken links
4. New documents: Establish required link network
```

### Link Lifecycle
```
Document Lifecycle and Links:
DRAFT -> Links should be evolving
REVIEW -> Links should be complete and accurate
APPROVED -> Links are frozen as part of approval
ARCHIVED -> Links may become historical references
```

## Specialized Linking Patterns

### Traceability Links
```
Requirements Traceability Pattern:
PRD FR-001 → DES Implementation → SPR Task → IMP Verification → RTM Validation

Example Chain:
[[PRD-2025-01-15-001#FR-001]] → [[DES-2025-01-15-001#section-4.1]] →
[[SPR-2025-01-22-001#DEV-001]] → [[IMP-2025-01-22-001#DEV-001]] →
[[RTM-2025-01-15-001#FR-001]]
```

### Decision Record Links
```
ADR (Architecture Decision Record) Linking:
ADR-001: Hexagonal Architecture Choice
→ Links to [[DES-2025-01-15-001#section-3.1]] (design implementation)
→ Links from [[ARCH-2025-01-15-001#section-3.2]] (architecture reference)
```

### Cross-Context Links
```
DDD Context Relationship Documentation:
Context A → Context B: Customer-Supplier Relationship
→ Documented in [[CM-2025-01-15-001#section-3.1]]
→ Supporting architecture in [[ARCH-2025-01-15-001#section-4.2]]
→ Language coordination via [[UL-2025-01-15-001#section-4]]
```

## Link Automation and Tooling

### Automated Link Generation
```yaml
# Link generation rules in index.yaml
link_automation:
  document_creation:
    - generate_required_links_on_create
    - validate_link_format_on_save
    - create_reverse_links_when_possible

  document_reference:
    - suggest_links_based_on_content_analysis
    - warn_about_missing_required_links
    - detect_broken_links_on_document_change
```

### Link Checking Tools
```json
{
  "link_validation": {
    "existence_check": true,
    "format_validation": true,
    "status_verification": true,
    "circular_dependency_detection": true,
    "completeness_checking": true
  },
  "quality_metrics": {
    "link_density": "appropriate_level",
    "context_relevance": "high",
    "reciprocal_coverage": "comprehensive"
  }
}
```

## Link Quality Metrics

### Quantitative Measures
- **Link Completeness**: Percentage of required links present
- **Link Validity**: Percentage of links pointing to existing documents
- **Reciprocal Links**: Percentage of bidirectional relationships
- **Cross-References**: Number of documents referencing each other

### Qualitative Measures
- **Contextual Relevance**: Links provide meaningful additional information
- **Reading Flow**: Links enhance rather than disrupt document readability
- **Navigation Ease**: Links enable smooth traversal of related information
- **Maintenance Burden**: Links remain current and unbroken

## Link Troubleshooting

### Common Issues and Solutions

#### Broken Links
```
Problem: [[DES-2025-01-15-001]] points to non-existent document
Solution: Check document ID format, Create missing document, or Update link to correct document
```

#### Missing Required Links
```
Problem: PRD document lacks RTM link
Solution: Create RTM document or update link requirements index.yaml
```

#### Outdated Context
```
Problem: "As shown in [[ARCH-2025-01-15-001]]" but document has changed
Solution: Update link context to match current document content
```

#### Excessive Linking
```
Problem: Multiple links per sentence disrupting readability
Solution: Consolidate links, move to reference section, or create link summary tables
```

These linking rules ensure a coherent, navigable, and maintainable document ecosystem that supports the entire software development lifecycle.
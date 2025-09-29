# Documentation Structure Guide

This guide defines how documentation should be organized within the Spec-Driven Development kit to ensure consistency and ease of navigation.

## Overall Structure

The documentation is organized into several main categories that align with different phases of the development process:

```
docs/
├── templates/              # Document templates
├── init/                   # Project initialization documents
├── prd/                    # Product requirements documents
├── design/                 # Technical design documents
├── plan/                   # Task planning documents
├── execute/                # Execution logs and reports
├── architecture/           # Architecture decision records
├── glossary/               # Domain glossaries and ubiquitous language
├── patterns/               # Design patterns and best practices
└── archive/                # Archived documents
```

## Document Hierarchy

### Level 1: Project-Level Documents
These documents define the overall project and are typically created during initialization:
- Project initialization documents
- High-level architecture
- Project glossary
- Product vision

### Level 2: Feature-Level Documents
These documents focus on specific features or components:
- Feature requirements documents
- Component design documents
- Feature-level task plans

### Level 3: Task-Level Documents
These documents track specific implementation tasks:
- Task execution logs
- Code review records
- Test results

## Cross-Document Linking

Documents should be linked to create a web of related information:

### Forward Linking
- PRD documents link to related design documents
- Design documents link to task plans
- Task plans link to execution logs

### Backward Linking
- Execution logs link back to task plans
- Task plans link back to design documents
- Design documents link back to PRD documents

### Lateral Linking
- Related features link to each other
- Reused components link to their design documents
- Shared glossary terms link to glossary

## Document Relationships

### Primary Relationships
- `init` → `prd` (Initialization leads to PRD creation)
- `prd` → `design` (Requirements inform design)
- `design` → `plan` (Design drives planning)
- `plan` → `execute` (Plan guides execution)

### Secondary Relationships
- `design` → `architecture` (Design may influence architecture)
- `execute` → `design` (Execution may require design updates)
- `all` → `glossary` (All documents reference common terms)

## Metadata Consistency

All documents should maintain consistent metadata fields to facilitate linking and searching:

```
**Document ID**: [Unique identifier]
**Title**: [Document title]
**Created**: [Date created]
**Last Modified**: [Date modified]
**Authors**: [List of authors]
**Status**: [Draft/Review/Approved/Deprecated]
**Parent Document**: [ID of parent document]
**Child Documents**: [List of child document IDs]
**Related Documents**: [List of related document IDs]
**Domain**: [Relevant domain area]
**Bounded Context**: [Relevant bounded context]
```

## Document Lifecycle

Documents follow a lifecycle that mirrors the development process:

1. **Draft** - Initial creation, content being developed
2. **Review** - Content under review, feedback being incorporated
3. **Approved** - Content finalized, ready for implementation
4. **In Progress** - Content being implemented (for execution docs)
5. **Completed** - Implementation finished
6. **Deprecated** - Document superseded by newer version

## Search and Discovery

To enable effective search and discovery, documents should include relevant tags and categories:

### Common Tags
- `domain-driven-design`
- `test-driven-development`
- `architecture`
- `requirements`
- `design`
- `implementation`
- `testing`
- `deployment`

### Domain Tags
- Specific domain terms relevant to the project
- Bounded context names
- Subdomain classifications (core, supporting, generic)

## Version Management

- Major versions for significant content changes
- Minor versions for additions/subtractions
- Patch versions for typo fixes and formatting
- Always maintain backward compatibility in references
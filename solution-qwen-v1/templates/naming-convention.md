# Document Naming Convention

## Purpose
This document defines the standard naming convention for all documents in the Spec-Driven Development kit. Consistent naming allows for easy identification, organization, and retrieval of documents.

## Document ID Format
All documents should have a unique ID following this pattern:
`{TYPE}-{YYYY}-{NNN}`

Where:
- `{TYPE}`: Document type abbreviation
- `{YYYY}`: 4-digit year of creation
- `{NNN}`: Sequential number (001, 002, etc.)

### Document Type Abbreviations
- `INIT` - Project Initialization Documents
- `PRD` - Product Requirements Documents
- `DESIGN` - Technical Design Documents
- `PLAN` - Task Planning Documents
- `EXEC` - Execution Log Documents
- `ARCH` - Architecture Decision Records
- `GLOSS` - Glossary/Ulbrquitous Language Documents
- `PROC` - Process Documentation
- `SPEC` - Specification Documents

### Examples
- `INIT-2025-001` - First initialization document of 2025
- `PRD-2025-015` - 15th PRD of 2025
- `DESIGN-2025-003` - 3rd design document of 2025

## File Naming Convention
Files should be named using the document ID, with appropriate extensions:
- `{ID}.md` - Markdown documents
- `{ID}_v{version}.md` - Versioned markdown documents
- `{ID}.pdf` - PDF documents
- `{ID}.docx` - Word documents

## Directory Structure
Documents should be organized in the following directory structure:
```
docs/
├── init/           # Initialization documents
├── prd/            # PRD documents
├── design/         # Design documents
├── plan/           # Planning documents
├── execute/        # Execution logs
├── archive/        # Archived documents
└── templates/      # Document templates
```

## Version Control
- Major version changes (1.x.x): Significant content changes or rewrites
- Minor version changes (x.1.x): Additions of new sections or updates
- Patch version changes (x.x.1): Typo fixes, formatting, or minor clarifications

## Document Linking Convention
When referencing other documents within a document, use this format:
`[Document Title](../path/to/document.md) ({ID})`

## Metadata Requirements
Each document must include the following metadata at the top:
```
**Document ID**: {ID}
**Version**: {version}
**Created**: {date}
**Last Modified**: {date}
**Authors**: {list_of_authors}
**Status**: {draft|review|approved|deprecated}
**Related Documents**: {list_of_related_doc_ids}
```

This ensures all documents are properly tracked and connected within the system.
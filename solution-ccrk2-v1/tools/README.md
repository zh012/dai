# Context Extractor Tool

**Document ID:** CON-2025-09-28-001
**Purpose:** Standalone context extraction for SDD Kit AI agents
**Type:** Development Tool

## Overview

The Context Extractor is a lightweight Python utility designed for preparing relevant documentation context for AI agents working within the SDD Kit framework. It extracts and filters document content based on specific task requirements, command types, and focus areas.

## Key Features

- **Intelligent Content Filtering**: Extracts only relevant sections from documents based on task context
- **Multi-Document Support**: Processes multiple documents in a single extraction operation
- **Phase-Aware Extraction**: Tailors content based on development phase (init, prd, design, plan, execute)
- **Document-Type Specific Logic**: Handles PRD, Architecture, Technical Design, Sprint Planning, and Implementation documents differently
- **Stand-Alone Operation**: No external dependencies beyond Python standard library
- **Context Size Management**: Configurable maximum context size for optimal token usage

## Architecture

### Core Classes

#### SmartContextExtractor
Main extraction engine that handles document loading, content analysis, and output generation.

#### TaskContext
Encapsulates task metadata including command type, phase, focus areas, and constraints.

#### QuickContextExtractor
Simplified interface providing shortcut methods for common extraction patterns.

### Document Processing Flow

1. **Document Discovery**: Searches structured paths based on document type
2. **Content Analysis**: Extracts metadata and applies document-specific parsing
3. **Relevance Filtering**: Applies focus area filters based on task context
4. **Content Assembly**: Combines extracted sections into cohesive output
5. **Output Generation**: Formats final context with size constraints

## Usage Patterns

### Command Line Interface

```bash
# Basic execution with uv
uv run extract-context.py --document-ids PRD-2025-01-15-001 --command execute

# Multi-document extraction with focus areas
uv run extract-context.py --document-ids PRD-2025-01-15-001 ARCH-2025-01-15-001 \
  --command design --focus-areas tech_stack patterns

# With task-specific context
uv run extract-context.py --document-ids SPR-2025-01-22-001 --command execute \
  --task-id DEV-001 --focus-areas implementation testing

# Output to file with statistics
uv run extract-context.py --document-ids DES-2025-01-15-001 --command plan \
  --output context.md --stats
```

### Python Integration

```python
from extract_context import QuickContextExtractor

# Get implementation context
context = QuickContextExtractor.get_implementation_context(
    document_ids=["PRD-2025-01-15-001", "SPR-2025-01-22-001"],
    task_id="DEV-001",
    include_testing=True,
    include_quality=True
)

# Get design context
context = QuickContextExtractor.get_design_context(
    document_ids=["PRD-2025-01-15-001", "ARCH-2025-01-15-001"],
    focus_areas=["patterns", "constraints"]
)

# Get planning context
context = QuickContextExtractor.get_planning_context(
    document_ids=["DES-2025-01-15-001"],
    include_dependencies=True
)
```

## Document Type Mappings

### File Path Resolution

```
PRD     → docs/prd/
ARCH    → docs/architecture/
DES     → docs/design/
SPR     → docs/sprint/
IMP     → docs/implementation/
CM      → docs/domain/context-map/
UL      → docs/domain/ubiquitous-language/
RTM     → docs/rtm/
```

### Document-Specific Extraction

#### PRD Documents
- Requirements sections (when `requirements` focus area specified)
- Acceptance criteria (when `acceptance` focus area specified)
- Executive summary and success criteria (default behavior)

#### Architecture/Design Documents
- Technology stack information (when `tech_stack` focus area specified)
- Architectural patterns (when `patterns` focus area specified)
- Overview and integration details (default behavior)

#### Sprint Planning Documents
- Task assignments (when `tasks` focus area specified)
- Dependencies information (when `dependencies` focus area specified)
- Sprint goals and metrics (default behavior)

## Configuration Options

### CLI Parameters

| Parameter | Required | Description | Default |
|-----------|----------|-------------|---------|
| `--document-ids` | Yes | Space-separated list of document IDs | - |
| `--command` | Yes | Command type: init/prd/design/plan/execute | - |
| `--task-id` | No | Specific task identifier | None |
| `--focus-areas` | No | Areas to emphasize in extraction | [] |
| `--constraints` | No | Constraints to consider | [] |
| `--docs-root` | No | Root documents directory | `../docs` |
| `--max-context` | No | Maximum context size (characters) | 4000 |
| `--output` | No | Output file path | stdout |
| `--stats` | No | Display extraction statistics | False |
| `--verbose` | No | Enable debug logging | False |

### Focus Area Options

Common focus areas by command:

- **execute**: `implementation`, `testing`, `acceptance`, `quality`
- **design**: `tech_stack`, `patterns`, `constraints`, `integration`
- **plan**: `tasks`, `dependencies`, `capacity`, `timeline`
- **prd**: `requirements`, `acceptance`, `personas`, `success_criteria`

## Error Handling

### Document Not Found
- Searches multiple potential paths with wildcard support
- Returns empty string if document cannot be located
- Logs warning for debugging purposes

### Invalid Document ID Format
- Validates document ID format (TYPE-YYYY-MM-DD-NNN pattern)
- Gracefully handles malformed IDs
- Provides clear error messages

### File Reading Errors
- Handles encoding issues and permission problems
- Continues processing other documents if one fails
- Provides detailed error reporting with `--verbose` flag

## Performance Considerations

### Memory Usage
- Processes documents sequentially to minimize memory footprint
- Extracts only relevant sections rather than loading entire documents
- Configurable maximum context size limits output

### Processing Speed
- Efficient regex-based pattern matching
- Lazy document loading (only when file exists)
- Optimized for typical document sizes (hundreds to thousands of lines)

## Integration with SDD Kit

### Agent Consumption Patterns

1. **Context Preparation**: Agent invokes extractor with task-specific parameters
2. **Content Analysis**: Relevant sections extracted based on agent's focus
3. **Decision Support**: Filtered context provided to agent for informed decisions
4. **Traceability**: Document references maintained for requirement tracking

### Persona-Specific Usage

- **TDD Co-pilot**: Focuses on acceptance criteria and implementation details
- **Technical Architect**: Emphasizes technical constraints and architectural patterns
- **Project Coordinator**: Prioritizes dependencies and task assignments
- **Product Manager**: Concentrates on requirements and success criteria

## Maintenance Guidelines

### Adding New Document Types
1. Update `_get_search_paths()` method with new type mapping
2. Add extraction logic in `_extract_*_content()` methods
3. Document expected format and focus areas

### Modifying Extraction Logic
1. Maintain backward compatibility for existing focus areas
2. Document focus area changes in README
3. Update examples and test cases

### Performance Tuning
1. Adjust regex patterns for optimal performance
2. Consider caching frequently accessed documents
3. Monitor memory usage with large document sets

## Testing Approach

### Unit Testing
- Test extraction logic for each document type
- Validate focus area filtering accuracy
- Verify output format and size constraints

### Integration Testing
- Test complete extraction workflows
- Validate error handling and edge cases
- Confirm integration with agent workflows

---

**Link Network**: [[README-2025-09-28-001]] (SDD Kit Overview)
**Dependencies**: Python 3.x, `uv` package manager
**Status**: ACTIVE
**Version**: 1.0.0
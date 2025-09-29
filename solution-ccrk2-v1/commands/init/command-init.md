# Command: init - System Initialization

## Purpose
Initialize a software project using Domain-Driven Design principles, conducting interactive vision discovery and creating comprehensive foundation documents for greenfield projects, or performing systematic codebase analysis and documentation for brownfield projects.

## Command Format
```
/init <project_type> [options]
```

### Project Type Options
- `greenfield` - New project initialization
- `brownfield` - Existing project analysis and re-documentation

## Execution Flow

### Phase 1: Project Context Assessment
```
Analyzing project type and requirements...
Loading appropriate persona configuration...
Initializing document structure...
```

### Phase 2: DDD Foundation Process
```
[GREENFIELD] Conducting interactive vision discovery...
[BROWNFIELD] Performing systematic codebase analysis...

Identifying bounded contexts...
Mapping context relationships...
Establishing ubiquitous language...
Creating initial architecture baseline...
```

### Phase 3: Document Generation
```
Generating Context Map Document...
Creating Ubiquitous Language Glossary...
Producing System Architecture Document...
Establishing document linking and references...
```

## Interactive Discovery Process (Greenfield)

### Vision Discovery Session (30-45 minutes)
1. **Product Vision Identification**
   - "What is the core problem you're trying to solve?"
   - "Who are your primary users and stakeholders?"
   - "What constitutes success for this project?"
   - "What are the key business drivers and opportunities?"

2. **Domain Exploration**
   - "Can you describe your main business processes?"
   - "What are the key entities and concepts in your domain?"
   - "How do different business areas interact?"
   - "Where do you see clear boundaries between different concerns?"

3. **Technical Context Understanding**
   - "What existing systems will this integrate with?"
   - "What are your scalability and performance expectations?"
   - "How do you envision system deployment and operations?"
   - "What are your security and compliance requirements?"

### Context Mapping Workshop (20-30 minutes)
1. **Bounded Context Identification**
   - Collaborative identification of candidate contexts
   - Discussion of context boundaries and models
   - Validation of context cohesion and purpose
   - Agreement on context boundaries

2. **Integration Pattern Selection**
   - For each context relationship:
     - Upstream/Downstream relationships
     - Shared kernel opportunities
     - Customer/Supplier relationships
     - Conformist vs Anti-corruption layer needs

3. **Ubiquitous Language Development**
   - Collaborative creation of core domain terms
   - Definition validation across contexts
   - Cross-context term consistency checking
   - Business rule documentation

### Architecture Strategy Session (15-25 minutes)
1. **High-level Architecture Discussion**
   - Preferred architectural patterns
   - Technology preferences and constraints
   - Integration requirements
   - Quality attribute priorities

2. **Document Structure Planning**
   - Document organization strategy
   - Naming conventions agreement
   - Linked document strategy
   - Evolution and maintenance planning

## Codebase Analysis Process (Brownfield)

### Systematic Code Scanning (20-40 minutes)
```
Analyzing codebase structure...
Identifying current architecture patterns...
Extracting bounded context boundaries...
Mapping existing integrations...
```

1. **Architecture Pattern Recognition**
   - Current architectural patterns in use
   - Technology stack assessment
   - Integration patterns identification
   - Quality attributes evaluation

2. **Dynamic Code Analysis**
   - Runtime behavior analysis
   - Usage pattern identification
   - Performance characteristics
   - Dependency analysis

### Domain Discovery and Mapping (15-30 minutes)
1. **Bounded Context Extraction**
   - Automatic identification of potential contexts
   - Domain model extraction
   - Business logic pattern recognition
   - Cross-context interaction mapping

2. **Ubiquitous Language Extraction**
   - Business term identification from code/comments
   - Entity and domain concept mapping
   - Business rule extraction
   - Cross-context term usage analysis

### Architecture Synthesis and Refinement (10-20 minutes)
1. **Findings Presentation**
   - Current state architecture
   - Identified contexts and relationships
   - Ubiquitous language glossary
   - Integration points and patterns

2. **Guided Refinement Process**
   - Collaborative review of extracted information
   - Refinement based on business context
   - Context boundary adjustments
   - Language consistency improvements

## Document Generation Process

### Document ID Generation
```
Format: {TYPE}-{YYYY}-{MM}-{DD}-001
Examples:
- CM-2025-01-15-001 (Context Map)
- UL-2025-01-15-001 (Ubiquitous Language)
- ARCH-2025-01-15-001 (Architecture Document)
```

### Generated Documents

#### 1. Context Map Document (CM-{date}-001)
**Location**: `docs/domain/context-map/`
```markdown
# CM-2025-01-15-001: System Context Map

## Document Metadata
- **ID**: CM-2025-01-15-001
- **Title**: {Project} Context Map
- **Version**: 1.0
- **Date**: 2025-01-15
- **Author**: AI System Initialization Architect
- **Status**: APPROVED

## Identified Bounded Contexts
[Detailed contexts with responsibilities]

## Context Relationships
[Integration patterns and relationships]

## Ubiquitous Language
[Domain-specific terms and definitions]

## Integration Strategies
[API, event-driven, shared database patterns]

## Deployment and Organizational Mapping
[Team assignments and coordination]
```

#### 2. Ubiquitous Language Glossary (UL-{date}-001)
**Location**: `docs/domain/ubiquitous-language/`
```markdown
# UL-2025-01-15-001: Ubiquitous Language Glossary

## Document Metadata
- **ID**: UL-2025-01-15-001
- **Title**: {Project} Ubiquitous Language
- **Version**: 1.0
- **Date**: 2025-01-15
- **Author**: AI System Initialization Architect
- **Status**: APPROVED

## Core Domain Terms
[Business terms with precise definitions]

## Context-Specific Terms
[Terms organized by bounded context]

## Cross-Context Terms
[Shared and differentiated terms]

## Process and Workflow Terms
[Business process terminology]
```

#### 3. System Architecture Document (ARCH-{date}-001)
**Location**: `docs/architecture/`
```markdown
# ARCH-2025-01-15-001: System Architecture

## Document Metadata
- **ID**: ARCH-2025-01-15-001
- **Title**: {Project} System Architecture
- **Version**: 1.0
- **Date**: 2025-01-15
- **Author**: AI System Initialization Architect
- **Status**: APPROVED
- **Links**: [[CM-2025-01-15-001]], [[UL-2025-01-15-001]]

## Architecture Overview
[High-level design strategy]

## Technical Architecture
[Technology choices and patterns]

## Domain Architecture
[DDD architectural considerations]

## Quality Attributes
[Performance, scalability, security]

## Evolution and Roadmap
[Short-term and long-term evolution]
```

## Success Criteria
- **Interactive Completion**: Successful completion of interactive sessions
- **Document Quality**: All generated documents meet quality standards
- **Stakeholder Alignment**: Stakeholder approval of vision and architecture
- **Context Map Completeness**: All contexts identified with clear boundaries
- **Language Consistency**: Ubiquitous language agreed upon and documented
- **Architecture Agreement**: Technical architecture strategy approved

## Post-Initiation Deliverables
1. **Generated Documentation Suite**:
   - Context Map Document
   - Ubiquitous Language Glossary
   - System Architecture Document
   - Document link network

2. **Foundation for Next Steps**:
   - Clear grid for PRD creation
   - Architecture baseline for design work
   - Context boundaries for development teams
   - Ubiquitous language for consistent communication

## Example Usage
```
User: /init greenfield
AI: Welcome to system initialization! I'll help you define your product vision using DDD principles.
[Interactive vision discovery process begins...]

User: /init brownfield
AI: I'll analyze your existing codebase to map out bounded contexts and context relationships.
[Systematic analysis process begins...]
```

## Next Steps After Initiation
- Create detailed PRD for specific features ( /prd command )
- Design technical solutions for requirements ( /design command )
- Plan development sprints ( /plan command )
- Execute development tasks with TDD ( /execute command )
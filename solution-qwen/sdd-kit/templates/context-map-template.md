# Context Map & Ubiquitous Language

## Document Information
- **Document ID**: [CMAP-XXXX]
- **Version**: [v1.0]
- **Date**: [YYYY-MM-DD]
- **Author(s)**: [Author Names]
- **Reviewer(s)**: [Reviewer Names]
- **Status**: [Draft/Review/Approved]

## Table of Contents
1. [Introduction](#introduction)
2. [Bounded Contexts](#bounded-contexts)
3. [Context Relationships](#context-relationships)
4. [Ubiquitous Language](#ubiquitous-language)
5. [Domain Vocabulary](#domain-vocabulary)
6. [Appendices](#appendices)

## 1. Introduction
### 1.1 Purpose
[Describe the purpose of this context map and its intended audience]

### 1.2 Scope
[Define the scope of the domains covered in this context map]

### 1.3 Stakeholders
| Role | Name | Responsibilities |
|------|------|------------------|
| [Stakeholder Role] | [Name] | [Responsibilities] |

### 1.4 Definitions, Acronyms and Abbreviations
| Term | Definition |
|------|------------|
| [Term] | [Definition] |

## 2. Bounded Contexts
### 2.1 Context Inventory
| Context Name | Description | Owner | Responsibilities |
|--------------|-------------|-------|------------------|
| [Context 1] | [Description] | [Team/Person] | [Responsibilities] |
| [Context 2] | [Description] | [Team/Person] | [Responsibilities] |
| [Context 3] | [Description] | [Team/Person] | [Responsibilities] |

### 2.2 Context Details
#### [Context Name]
- **Purpose**: [Why this context exists]
- **Responsibilities**: [What this context is responsible for]
- **Entities**: [Key domain entities]
- **Value Objects**: [Key value objects]
- **Aggregates**: [Key aggregates]
- **Domain Services**: [Key domain services]
- **Domain Events**: [Key events published by this context]

## 3. Context Relationships
### 3.1 Relationship Types
| Relationship Type | Description | Use Case |
|-------------------|-------------|----------|
| Partnership | [Mutual collaboration] | [When to use] |
| Shared Kernel | [Shared code/data] | [When to use] |
| Customer-Supplier | [One depends on other] | [When to use] |
| Conformist | [Adapt to upstream model] | [When to use] |
| Anticorruption Layer | [Protect from upstream model] | [When to use] |
| Open Host Service | [Published interface] | [When to use] |
| Published Language | [Shared communication language] | [When to use] |

### 3.2 Context Map Visualization
[Visual representation of relationships between contexts - can be a diagram or table]

### 3.3 Relationship Details
#### [Context A] → [Context B]
- **Relationship Type**: [Type from above]
- **Communication Pattern**: [Synchronous/Asynchronous, Event-based/API, etc.]
- **Data Flow**: [What data flows in each direction]
- **Dependencies**: [What each context depends on from the other]
- **Interfaces**: [APIs or protocols used]

## 4. Ubiquitous Language
### 4.1 Language Principles
[Core principles that guide the ubiquitous language]

### 4.2 Language Evolution
[How the language will be maintained and evolved over time]

## 5. Domain Vocabulary
### 5.1 Core Domain Terms
| Term | Definition | Context | Synonyms | Related Terms |
|------|------------|---------|----------|---------------|
| [Term] | [Clear definition] | [Bounded Context] | [Other names] | [Related concepts] |
| [Term] | [Clear definition] | [Bounded Context] | [Other names] | [Related concepts] |

### 5.2 Domain Scenarios
#### [Scenario Name]
- **Narrative**: [Story of how domain concepts interact in this scenario]
- **Actors**: [Who participates in this scenario]
- **Flow**: [Step-by-step flow of events]
- **Terminology Used**: [Key terms used in this scenario]

### 5.3 Domain Rules
#### [Rule Category]
- **Rule 1**: [Complete sentence description of business rule]
- **Rule 2**: [Complete sentence description of business rule]

## 6. Appendices
### A. Glossary Cross-Reference
[Cross-reference between terms and contexts where they're used]

### B. Change Log
[Log of changes to the context map and language]

### C. Reference Materials
[Links to relevant documentation, domain expert interviews, etc.]
# {UL-ID}: Ubiquitous Language Glossary

## Document Metadata
- **ID**: {UL-ID}
- **Title**: {TITLE}
- **Version**: 1.0
- **Date**: {DATE}
- **Author**: {AUTHOR}
- **Status**: {DRAFT|REVIEW|APPROVED}
- **Links**: [[{ARCH-ID}]], [[{CM-ID}]]

## 1. Overview
<!-- Ubiquitous language overview following DDD principles -->

### 1.1 What is Ubiquitous Language?
<!-- Single, shared language used by all team members and the software -->

### 1.2 Why Ubiquitous Language?
<!-- Bridges the gap between technical and domain experts -->

### 1.3 How to Use This Document
<!-- Guidelines for using and maintaining the language -->

## 2. Core Domain Terms
<!-- The most important terms in the domain -->

### 2.1 [Term 1]
- **Definition**: [Clear, precise definition]
- **Context**: [Which bounded context this belongs to]
- **Aliases**: [Other names used for this term]
- **Related Terms**: [[Term 2]], [[Term 3]]
- **Business Rules**:
  - [Rule 1]
  - [Rule 2]
- **Usage Examples**:
  - "When a customer places an order..."
  - "The inventory system tracks..."
- **Anti-patterns**: [Terms that should NOT be used]
- **Validation Rules**: [How to validate this term]

### 2.2 [Term 2]
- **Definition**: [Clear, precise definition]
- **Context**: [Which bounded context this belongs to]
- **Aliases**: [Other names used for this term]
- **Related Terms**: [[Term 1]], [[Term 4]]
- **Business Rules**:
  - [Rule 1]
  - [Rule 2]
- **Usage Examples**:
  - "When processing a payment..."
  - "The user account includes..."
- **Anti-patterns**: [Terms that should NOT be used]
- **Validation Rules**: [How to validate this term]

## 3. Bounded Context Specific Terms
<!-- Terms organized by bounded context -->

### 3.1 [Context Name 1] Context

#### 3.1.1 Entities
- **[Entity Name]**:
  - **Definition**:
  - **Attributes**:
  - **Business Rules**:
  - **Lifecycle**:
  - **Invariants**:

#### 3.1.2 Value Objects
- **[Value Object Name]**:
  - **Definition**:
  - **Attributes**:
  - **Immutability Rules**:
  - **Equality Rules**:

#### 3.1.3 Domain Events
- **[Event Name]**:
  - **Definition**:
  - **When Triggered**:
  - **Payload**:
  - **Subscribers**:

#### 3.1.4 Domain Services
- **[Service Name]**:
  - **Definition**:
  - **Responsibilities**:
  - **Input**:
  - **Output**:
  - **Business Rules**:

### 3.2 [Context Name 2] Context
[Repeat structure for other contexts]

## 4. Cross-Context Terms
<!-- Terms that appear in multiple contexts -->

### 4.1 Shared Terms
<!-- Terms that mean the same thing across contexts -->

#### 4.1.1 [Shared Term]
- **Definition**:
- **Contexts**: [[Context 1]], [[Context 2]]
- **Consistency Rules**:
- **Synchronization**:

### 4.2 Differentiated Terms
<!-- Terms that mean different things in different contexts -->

#### 4.2.1 [Term with Multiple Meanings]
**In [Context 1]**:
- **Definition**:
- **Specific Rules**:
- **Examples**:

**In [Context 2]**:
- **Definition**:
- **Specific Rules**:
- **Examples**:

**Context Integration**: [How to handle different meanings]

## 5. Process and Workflow Terms
<!-- Terms related to business processes -->

### 5.1 Business Processes
- **[Process Name]**:
  - **Definition**:
  - **Steps**:
  - **Participants**:
  - **Transition Rules**:
  - **Business Goals**:

### 5.2 Workflow States
- **[State Name]**:
  - **Definition**:
  - **Valid Transitions**:
  - **Entry Conditions**:
  - **Exit Conditions**:
  - **Business Rules**:

### 5.3 Business Rules
- **[Rule Name]**:
  - **Description**:
  - **When Applied**:
  - **Consequences**:
  - **Related Terms**:

## 6. Technical Translation
<!-- How domain terms translate to technical implementation -->

### 6.1 Term to Code Mapping
- **[Domain Term]** → [Class/Function/Variable name]
  - **Implementation Notes**:
  - **Validation Rules**:
  - **Test Scenarios**:

### 6.2 Term to Database Mapping
- **[Domain Term]** → [Table/Column name]
  - **Data Type**:
  - **Constraints**:
  - **Relationships**:

### 6.3 Term to API Mapping
- **[Domain Term]** → [API endpoint/parameter]
  - **Endpoint**:
  - **Parameter**:
  - **Response**:

## 7. Language Evolution
<!-- How the language evolves over time -->

### 7.1 New Terms
<!-- Process for adding new terms -->

### 7.2 Modified Terms
<!-- Process for changing existing terms -->

### 7.3 Deprecated Terms
<!-- Terms that are no longer used -->

### 7.4 Version Control
<!-- How changes are tracked and communicated -->

## 8. Validation Guidelines
<!-- How to validate proper use of ubiquitous language -->

### 8.1 Naming Conventions
<!-- Conventions for naming things after domain terms -->

### 8.2 Code Review Guidelines
<!-- How to review code for proper language use -->

### 8.3 Documentation Guidelines
<!-- How to document using ubiquitous language -->

---

## Document Revision History
| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | {DATE} | {AUTHOR} | Initial version |
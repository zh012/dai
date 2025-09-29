# {CM-ID}: Context Map Document

## Document Metadata
- **ID**: {CM-ID}
- **Title**: {TITLE}
- **Version**: 1.0
- **Date**: {DATE}
- **Author**: {AUTHOR}
- **Status**: {DRAFT|REVIEW|APPROVED}
- **Links**: [[{ARCH-ID}]], [[{UL-ID}]]

## 1. Overview
<!-- Context map overview following DDD principles -->

### 1.1 Strategic Design Context
<!-- How context mapping fits into strategic design -->

### 1.2 Key Insights
<!-- Main insights from the context map -->

## 2. Bounded Context Definitions
<!-- Detailed definition of each bounded context -->

### 2.1 [Context Name 1] Context
- **Context ID**: BC-001
- **Name**: [Context Name]
- **Purpose**: [What this context is responsible for]
- **Ubiquitous Language**: [[{UL-ID}#section-specific-to-this-context]]

#### 2.1.1 Core Domain
<!-- Is this part of the core domain? -->

#### 2.1.2 Models and Concepts
<!-- Key models and concepts within this context -->
- **Entity**: [Entity name and description]
- **Value Object**: [VO name and description]
- **Aggregate**: [Aggregate name and description]
- **Service**: [Domain service name and description]

#### 2.1.3 Business Rules
<!-- Important business rules within this context -->

### 2.2 [Context Name 2] Context
- **Context ID**: BC-002
- **Name**: [Context Name]
- **Purpose**: [What this context is responsible for]
- **Ubiquitous Language**: [[{UL-ID}#section-specific-to-this-context]]

#### 2.2.1 Core Domain

#### 2.2.2 Models and Concepts

#### 2.2.3 Business Rules

## 3. Context Relationships
<!-- How contexts relate to each other -->

### 3.1 Upstream-Downstream Relationships
<!-- Partnership, shared kernel, customer-supplier, etc. -->

#### 3.1.1 [Upstream Context] → [Downstream Context]
- **Relationship Type**: [Partnership / Shared Kernel / Customer-Supplier / Conformist / Anticorruption Layer]
- **Rationale**: [Why this relationship type]
- **Integration Points**:
  - **API Endpoints**:
  - **Event Types**:
  - **Data Transfer Objects**:
- **Communication Patterns**: [Synchronous / Asynchronous / Event-driven]
- **Translation Layer**: [How models are translated between contexts]

#### 3.1.2 [Upstream Context] → [Downstream Context]
[Repeat for each relationship]

### 3.2 Partnership Relationships
<!-- Where both teams succeed or fail together -->

### 3.3 Shared Kernel
<!-- Where multiple teams share a common model -->

### 3.4 Customer-Supplier Relationships
<!-- Where downstream priorities are considered -->

### 3.5 Conformist Relationships
<!-- Where downstream conforms to upstream model -->

### 3.6 Anticorruption Layer
<!-- Where translation protects downstream from upstream changes -->

## 4. Integration Strategies
<!-- How contexts will be integrated -->

### 4.1 API Integration
<!-- REST API, GraphQL, etc. -->

#### 4.1.1 [Context Name] API
- **Base URL**:
- **Authentication**:
- **Rate Limiting**:

### 4.2 Event-Driven Integration
<!-- Event streaming, message queues, etc. -->

#### 4.2.1 Event Definitions
- **Event Name**: [Context].[DomainEvent]
- **Payload**:
- **Publishing Context**:
- **Subscribing Contexts**:

### 4.3 Database Integration
<!-- Shared databases, data synchronization -->

#### 4.3.1 Data Synchronization Strategy
- **Sync Method**: [Real-time / Batch / Event-driven]
- **Conflict Resolution**:
- **Data Ownership**:

## 5. Organizational Mapping
<!-- How contexts map to teams -->

### 5.1 Team Assignments
- **[Context Name] Context**: [Team Name]
  - **Team Size**:
  - **Key Skills**:
  - **Ownership Areas**:

### 5.2 Communication Patterns
<!-- How teams communicate about context boundaries -->

### 5.3 Coordination Requirements
<!-- What coordination is needed between teams -->

## 6. Evolution Planning
<!-- How contexts might evolve over time -->

### 6.1 Merge Opportunities
<!-- Contexts that might be merged -->

### 6.2 Split Opportunities
<!-- Contexts that might be split -->

### 6.3 Integration Improvements
<!-- How integration might be improved -->

## 7. Risk Assessment
<!-- Risks related to context mapping -->

### 7.1 Integration Risks
- **Risk**: [Description of integration risk]
- **Impact**: [High/Medium/Low]
- **Mitigation**: [How to mitigate]

### 7.2 Organizational Risks
- **Risk**: [Description of organizational risk]
- **Impact**: [High/Medium/Low]
- **Mitigation**: [How to mitigate]

## 8. Validation and Verification
<!-- How to validate the context map -->

### 8.1 Context Boundary Validation
<!-- How to verify context boundaries are correct -->

### 8.2 Integration Testing Strategy
<!-- How to test integration between contexts -->

### 8.3 Success Metrics
<!-- How to measure successful context mapping -->

---

## Document Revision History
| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | {DATE} | {AUTHOR} | Initial version |
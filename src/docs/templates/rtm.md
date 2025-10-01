# {RTM-ID}: Requirements Traceability Matrix

## Document Metadata
- **ID**: {RTM-ID}
- **Title**: {TITLE}
- **Version**: 1.0
- **Date**: {DATE}
- **Author**: {AUTHOR}
- **Status**: {DRAFT|ACTIVE|COMPLETE}
- **Links**: [[{PRD-ID}]], [[{DES-ID}]], [[{IMP-ID}]]

## 1. Overview
<!-- RTM overview and purpose -->

### 1.1 Purpose
<!-- Track requirements throughout the development lifecycle -->

### 1.2 Scope
<!-- What requirements are traced -->

### 1.3 Methodology
<!-- How traceability is maintained -->

## 2. Traceability Framework
<!-- Framework for tracing requirements -->

### 2.1 Requirement Types
<!-- Different types of requirements being traced -->
- **Business Requirements** (BR)
- **Functional Requirements** (FR)
- **Non-Functional Requirements** (NFR)
- **Technical Requirements** (TR)
- **User Stories** (US)

### 2.2 Traceability Levels
<!-- Levels of traceability -->
- **Vertical Traceability**: Business → Functional → Technical
- **Horizontal Traceability**: Requirements → Design → Implementation → Test

### 2.3 Traceability Matrix Structure
<!-- How the matrix is organized -->

## 3. Requirements Catalogue
<!-- All requirements being traced -->

### 3.1 Business Requirements
<!-- High-level business requirements -->

#### 3.1.1 BR-001: [Business Requirement Title]
- **Description**: [Business requirement description]
- **Source**: [Stakeholder/Document]
- **Priority**: [High/Medium/Low]
- **Status**: [Draft/Approved/Implemented/Verified]
- **Rationale**: [Business justification]

#### 3.1.2 BR-002: [Business Requirement Title]
[Repeat structure]

### 3.2 Functional Requirements
<!-- Detailed functional requirements -->

#### 3.2.1 FR-001: [Functional Requirement Title]
- **Description**: [Functional requirement description]
- **Parent Business Requirement**: [[BR-001]]
- **Priority**: [High/Medium/Low]
- **Status**: [Draft/Approved/Implemented/Verified]
- **Acceptance Criteria**: [Specific criteria]
- **Related User Story**: [[US-001]]

#### 3.2.2 FR-002: [Functional Requirement Title]
[Repeat structure]

### 3.3 Non-Functional Requirements
<!-- Quality attributes -->

#### 3.3.1 NFR-001: [Non-Functional Requirement Title]
- **Description**: [Non-functional requirement description]
- **Type**: [Performance/Security/Usability/Reliability/etc.]
- **Metric**: [Measurable criteria]
- **Priority**: [High/Medium/Low]
- **Status**: [Draft/Approved/Implemented/Verified]

#### 3.3.2 NFR-002: [Non-Functional Requirement Title]
[Repeat structure]

### 3.4 User Stories
<!-- Agile user stories -->

#### 3.4.1 US-001: [User Story Title]
- **As a**: [User role]
- **I want to**: [Functionality]
- **So that**: [Benefit]
- **Parent Functional Requirement**: [[FR-001]]
- **Priority**: [High/Medium/Low]
- **Story Points**: [Point estimate]
- **Acceptance Criteria**: [Detailed criteria]
- **Status**: [Draft/Approved/Implemented/Verified/Closed]

#### 3.4.2 US-002: [User Story Title]
[Repeat structure]

## 4. Design Traceability
<!-- Links to design documents -->

### 4.1 Architecture Traceability
<!-- Links to architecture documents -->

#### 4.1.1 Business Requirement → Architecture
- **BR-001** → [[ARCH-001-Section]]
  - **Rationale**: [How architecture supports requirement]
  - **Verification**: [How verified]

#### 4.1.2 Functional Requirement → Architecture
- **FR-001** → [[ARCH-001-Section]]
  - **Rationale**: [How architecture supports requirement]
  - **Verification**: [How verified]

### 4.2 Technical Design Traceability
<!-- Links to technical design documents -->

#### 4.2.1 User Story → Technical Design
- **US-001** → [[DES-001-Section]]
  - **Design Elements**: [Specific design components]
  - **Implementation Approach**: [How requirement is implemented]

## 5. Implementation Traceability
<!-- Links to code and implementation -->

### 5.1 Requirement → Code Mapping
<!-- Specific code locations for requirements -->

#### 5.1.1 Functional Requirement → Code
- **FR-001** → [File:Method/Function]
  - **Implementation Details**: [How requirement implemented]
  - **Code Review Status**: [Reviewed/Approved]

#### 5.1.2 User Story → Code
- **US-001** → [File:Method/Function]
  - **Files Modified**: [List of changed files]
  - **Implementation Details**: [How story implemented]
  - **Integration Tests**: [Test coverage]

### 5.2 Requirement → Database Schema
<!-- Database changes for requirements -->

#### 5.2.1 Data Model Changes
- **FR-001** → [Table:Column]
  - **Schema Changes**: [Database modifications]
  - **Migration Scripts**: [Migration references]

## 6. Test Traceability
<!-- Links to test cases and results -->

### 6.1 Requirement → Test Case Mapping
<!-- Test cases that verify requirements -->

#### 6.1.1 Functional Requirement → Test Cases
- **FR-001** → [Test Case IDs]
  - **Test Types**: [Unit/Integration/System/UAT]
  - **Test Status**: [Pass/Fail/Issue]
  - **Test Results**: [Details and metrics]

#### 6.1.2 User Story → Acceptance Tests
- **US-001** → [Acceptance Test IDs]
  - **Acceptance Criteria Tests**:
  - **Edge Case Tests**:
  - **Performance Tests**: [If applicable]
  - **Security Tests**: [If applicable]

### 6.2 Test Coverage
<!-- Overall test coverage metrics -->
- **Unit Test Coverage**: [%]
- **Integration Test Coverage**: [%]
- **System Test Coverage**: [%]
- **Acceptance Test Coverage**: [%]
- **Requirement Coverage**: [% of requirements tested]

## 7. Change Management
<!-- How requirement changes are managed -->

### 7.1 Change Request Traceability
<!-- Tracking requirement changes -->

#### 7.1.1 Change Request CR-001
- **Original Requirement**: [[FR-001]]
- **Change Description**: [What changed]
- **Reason**: [Why change needed]
- **Impact**: [Affected components]
- **Status**: [Approved/Rejected/Pending]
- **Implementation**: [How change implemented]

### 7.2 Version Control
<!-- Version control for requirements -->

#### 7.2.1 Requirement Versions
- **FR-001-v1.0**: [Original version]
- **FR-001-v1.1**: [Modified version]
- **Change Summary**: [What changed between versions]

## 8. Risk Assessment
<!-- Risks related to requirement traceability -->

### 8.1 Tracing Risks
- **Risk**: [Description of risk]
- **Impact**: [High/Medium/Low]
- **Mitigation**: [Strategy to mitigate]

### 8.2 Compliance Risks
- **Risk**: [Regulatory/compliance risk]
- **Impact**: [High/Medium/Low]
- **Mitigation**: [Strategy to mitigate]

## 9. Validation and Verification
<!-- How traceability is validated -->

### 9.1 Traceability Audit
<!-- Regular audit process -->
- **Audit Frequency**: [How often]
- **Audit Process**: [How conducted]
- **Audit Results**: [Findings]

### 9.2 Gap Analysis
<!-- Identifying missing traceability links -->

#### 9.2.1 Missing Links
- **Requirement**: [Requirement ID]
- **Missing Link**: [What should link but doesn't]
- **Priority**: [High/Medium/Low]
- **Resolution**: [How to resolve]

---

## Document Revision History
| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | {DATE} | {AUTHOR} | Initial version |
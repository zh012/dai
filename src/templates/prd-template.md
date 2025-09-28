# Instruction

- Assign each PRD a unique 4 digits sequence number, e.g. 0001
- All the occurrences of `XXXX` should be replaced with this unique number
- PRD is created and updated interactively with user

# PRD template

```
---
id: PRD-XXXX
type: prd
title: [The requirement name]
status: [Draft or Approved, default to be Draft]
related: [ID list of other documents]
links: [hyper]
---

## Table of Contents
1. [Executive Summary](#1-executive-summary)
2. [Problem Statement](#2-problem-statement)
3. [Use cases](#3-use-cases)
4. [Functional Requirements](#4-functional-requirements)
5. [Non-Functional Requirements](#5-non-functional-requirements)
6. [User Journeys](#6-user-journeys)
7. [Domain Model](#7-domain-model)
8. [Dependencies](#8-dependencies)
9. [Constraints](#9-constraints)
10. [Wireframes/Mockups](#10-wireframesmockups)
11. [Change Log](#11-change-log)

## 1. Executive Summary
### 1.1 Purpose
[Brief description of the product and its value proposition]

### 1.2 Business Objectives
- [Objective 1]
- [Objective 2]
- [Objective 3]

### 1.3 Key Features Overview
- [Feature 1]: [Brief description]
- [Feature 2]: [Brief description]
- [Feature 3]: [Brief description]

## 2. Problem Statement
[Clear description of the problem the product is solving, including:
- What the problem is
- Who is affected
- Impact of the problem
- Why solving it matters]


## 3. Use cases

#### UC-XXXX-001: [As a user type, I want to ..., so that ...]
- **Priority**: [High/Medium/Low]
- **Acceptance Criteria**: [Specific, testable condition]

#### UC-XXXX-002: [As a user type, I want to ..., so that ...]
- **Priority**: [High/Medium/Low]
- **Acceptance Criteria**: [Specific, testable condition]

[Continue for all use cases]

## 4. Functional Requirements
### 4.1 [Requirement Category 1]
- **FR-XXXX-001**: [Detailed requirement description]
  - **Traceability**: [Use case IDs]
  - **Type**: [Input/Process/Output]

- **FR-XXXX-002**: [Detailed requirement description]
  - **Traceability**: [Use case IDs]
  - **Type**: [Input/Process/Output]

[Continue for all functional requirements]


## 5. Non-Functional Requirements
### 5.1 Performance Requirements
- **NFR-XXXX-001**: [Detailed description]
    - **Response Time**: [Maximum acceptable response time]
    - **Throughput**: [Minimum acceptable throughput]
    - **Load Capacity**: [Expected maximum concurrent users/requests]

### 5.2 Security Requirements
- **NFR-XXXX-002**: [Detailed description]
    - **Authentication**: [Authentication requirements]
    - **Authorization**: [Authorization requirements]
    - **Data Protection**: [Data encryption, privacy requirements]

### 5.3 Usability Requirements
- **NFR-XXXX-003**: [Detailed description]
    - **Accessibility**: [Compliance with accessibility standards]
    - **User Experience**: [Usability goals]

## 6. User Journeys
### 6.1 [User Journey Name]
- **User Type**: [Primary user persona for this journey]
- **Goal**: [What the user is trying to accomplish]
- **Trigger**: [What initiates this journey]
- **Steps**:
  1. [Step 1]: [Description and related requirements]
  2. [Step 2]: [Description and related requirements]
  3. [Step 3]: [Description and related requirements]
- **Touchpoints**: [Systems, interfaces, or services involved]
- **Success Criteria**: [How the user knows they've achieved their goal]
- **Related Requirements**: [Requiement ids]

### 6.2 [User Journey Name]
- **User Type**: [Primary user persona for this journey]
- **Goal**: [What the user is trying to accomplish]
- **Trigger**: [What initiates this journey]
- **Steps**:
  1. [Step 1]: [Description and related requirements]
  2. [Step 2]: [Description and related requirements]
  3. [Step 3]: [Description and related requirements]
- **Touchpoints**: [Systems, interfaces, or services involved]
- **Success Criteria**: [How the user knows they've achieved their goal]
- **Related Requirements**: [Requirement IDs]

## 7. Domain Model
### 7.1 Core Entities
[Diagram showing key domain entities and their relationships]

### 7.2 Domain Events
| Event | Trigger | Consumers | Payload |
|-------|---------|-----------|---------|
| [Event Name] | [What causes the event] | [Who responds to the event] | [Data in the event] |

### 7.3 Value Objects
[List of important value objects in the domain]

### 7.4 Domain Services
[List of domain services that don't belong to specific entities]

## 8. Dependencies
### 8.1 Internal Dependencies
| Dependency | Description | Owner | Timeline |
|------------|-------------|-------|----------|
| [Dependency] | [What is needed] | [Team/Person] | [When needed] |

### 8.2 External Dependencies
| Dependency | Description | Vendor | Timeline |
|------------|-------------|--------|----------|
| [Dependency] | [What is needed] | [Vendor] | [When needed] |

## 9. Constraints
### 9.1 Technical Constraints
- [Technical limitation or requirement]

### 9.2 Business Constraints
- [Business limitation or requirement]

## 10. Wireframes/Mockups
[ Low fidality wireframe if available for early design concepts]

## 11. Change Log
[Record of changes to the PRD]
```
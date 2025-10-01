# Command: design - Technical Solution Design

## Purpose
Analyze requirements and create comprehensive technical design documents that translate business requirements into implementable solutions using established architectural patterns, technology evaluation, and detailed implementation planning.

## Command Format
```
/design <solution_name> [options]
```

### Options
- `--requirements=[prd_id]` - Link to specific PRD requirements
- `--constraints=[file_path]` - Load technical constraints
- `--scale=[small|medium|large]` - Set solution scale assumptions
- `--patterns=[pattern_list]` - Preferred architectural patterns
- `--quick` - Abbreviated design process

## Execution Flow

### Phase 1: Requirements Analysis
```
Loading technical architect persona...
Analyzing linked requirements documents...
Identifying technical constraints and context...
Establishing design criteria and success metrics...
```

### Requirements Deep Dive Process

#### Session 1: Requirements Context Analysis (20-35 minutes)
1. **Functional Requirements Mapping**
   ```
   Let's analyze the functional requirements from PRD-{prd_id}...

   "For requirement FR-001: Real-time data processing -
    What does 'real-time' specifically mean in your context?"
   "For requirement FR-002: Multi-user concurrent access -
    What's the expected concurrent user load?"
   "For requirement FR-003: Data persistence -
    What are your data retention requirements?"
   ```

2. **Non-Functional Requirements Interpretation**
   ```
   "For performance requirement NFR-001: <2 second response time -
    What timeframe are we measuring from? User action to full page load?"
   "For scalability requirement NFR-002: Support 10,000 concurrent users -
    What's the expected growth pattern?"
   "For security requirement NFR-003: Role-based access control -
    Do you have existing authentication systems to integrate with?"
   ```

3. **Acceptance Criteria Translation**
   ```
   Let's translate acceptance criteria from user stories into technical requirements...

   "US-001 Acceptance Criterion 1: 'Dashboard loads within 2 seconds'
    - Does this include data loading or just UI rendering?"
   "US-001 Acceptance Criterion 2: 'Real-time updates with <5 second delay'
    - Is this pull-based polling or push-based updates?"
   "US-001 Acceptance Criterion 3: 'Mobile responsive design'
    - What screen sizes and devices need support?"
   ```

#### Session 2: Technical Context Assessment (15-25 minutes)
1. **Current Technology Landscape**
   ```
   "What's your current technology stack?"
   "Do you have existing databases or data stores?"
   "What's your current deployment strategy?"
   "How is your application currently hosted?"
   ```

2. **Integration Requirements**
   ```
   "What external systems need integration?"
   "Do you have API specifications from partner systems?"
   "What are the data synchronization requirements?"
   "What are the integration time constraints?"
   ```

3. **Operational Constraints**
   ```
   "What are your monitoring and alerting requirements?"
   "Do you have scalability requirements?"
   "What are your security and compliance needs?"
   "What are your operational budget constraints?"
   ```

### Phase 2: Solution Architecture Options

#### Architecture Options Generation (25-40 minutes)
1. **Pattern Selection Discussion**
   ```
   Given your requirements, I see several architectural pattern options:

   **Option A: Layered Architecture**
   - Pros: Simple, well-understood, easy to maintain
   - Cons: May not scale well for complex domains
   - Suitability: Fits if your domain is relatively simple

   **Option B: Hexagonal Architecture (Ports & Adapters)**
   - Pros: Testable, flexible, domain-focused
   - Cons: More complex setup, learning curve
   - Suitability: Good if you need extensive testing and flexibility

   **Option C: Event-Driven Architecture**
   - Pros: Scalable, resilient, real-time capabilities
   - Cons: Complexity, debugging challenges, eventual consistency
   - Suitability: Excellent for your real-time requirements

   Which direction feels most appropriate for your team and requirements?
   ```

2. **Technology Stack Options**
   ```
   For your technology stack, considering your current environment and requirements:

   **Backend Options:**
   - Node.js/Express: Fast development, JavaScript familiarity
   - Python/FastAPI: Great for data processing, excellent libraries
   - Java/Spring Boot: Enterprise-grade, strong ecosystem
   - .NET Core: High performance, excellent tooling

   **Database Options:**
   - PostgreSQL: ACID compliance, JSON support, proven reliability
   - MongoDB: Flexible schema, good for user data
   - Redis: In-memory performance, perfect for session data
   - DynamoDB: Managed service, automatic scaling

   What's your team's current expertise and preference?
   ```

3. **Scaling Strategy Discussion**
   ```
   Let's consider how this will scale over time...

   "How do you envision user growth over the next 12 months?"
   "Do you expect data volume to grow linearly with users?"
   "What's your tolerance for downtime during scaling?"
   "Do you have budget constraints for scaling infrastructure?"
   ```

### Phase 3: Detailed Design Creation

#### Design Decision Documentation
```
Creating detailed technical design...
Documenting architectural decisions...
Planning implementation approach...
Establishing test strategy...
```

#### Generated Technical Design Document Structure

**Document ID**: DES-{YYYY}-{MM}-{DD}-001

**Location**: `docs/design/`

**Template**: `docs/templates/technical-desgin.md`

**Example**: `docs/templates/examples/DES-2025-01-15-001.md`


## Example Usage
```
User: /design customer-dashboard --requirements=PRD-2025-01-15-001
AI: I'll analyze the requirements from your PRD and create a comprehensive
   technical design. Let me examine the functional and non-functional requirements...
[Requirements analysis session begins...]

User: /design payment-processing --scale=large --patterns=event-driven,cqrs
AI: I'll design a large-scale payment processing system using event-driven
   architecture and CQRS patterns. Let's start with understanding your volume requirements...
[Pattern-based design session begins...]
```
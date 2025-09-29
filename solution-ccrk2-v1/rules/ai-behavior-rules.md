# AI Behavior Rules for SDD Kit

## Core Principles

### 1. Domain-Driven Design Focus
- **Language Precision**: Use ubiquitous language consistently across all interactions
- **Bounded Context Respect**: Maintain clear context boundaries in recommendations
- **Strategic Alignment**: Ensure all technical decisions align with business strategy
- **Continuous Learning**: Reference DDD literature and best practices

### 2. Test-Driven Development Discipline
- **Test-First Mentality**: Always encourage writing tests before implementation
- **Red-Green-Refactor**: Enforce the TDD cycle rigorously
- **Quality Metrics**: Maintain high code coverage and quality standards
- **Refactoring Focus**: Continuous improvement of existing code

### 3. Documentation Excellence
- **Living Documents**: Keep all documents current and relevant
- **Traceability**: Maintain clear links between all requirements, design, and implementation
- **Version Control**: Track all document changes with clear rationale
- **Stakeholder Communication**: Use appropriate language for each audience

## Communication Rules

### Language and Tone
```
✅ PREFERRED: Technical precision with business context
"Given the account suspension business rule, we should implement status validation..."

❌ AVOIDED: Pure technical jargon without business connection
"We'll add a status field to the user entity..."
```

### Response Structure
1. **Context Acknowledgment**: Reference relevant documents and decisions
2. **Recommendation**: Provide specific, actionable guidance
3. **Rationale**: Explain the reasoning using established patterns
4. **Next Steps**: Suggest immediate next actions
5. **Risk Considerations**: Highlight potential issues or alternatives

### Document Generation Rules

#### Naming Conventions
- **Documents**: Use template-based naming from index.yaml
- **Functions/Classes**: Follow language-specific conventions
- **Tests**: Use descriptive behavior-focused names
- **Files**: Consistent with project structure conventions

#### Linking Strategy
```
✅ REQUIRED: Cross-reference all related documents
- Every PRD must link to related ARCH documents
- Every DES must link to related PRD and SPR documents
- Every IMP document must link to related SPR and RTM documents

✅ PREFERRED: Bidirectional linking where appropriate
If PRD-001 links to ARCH-001, then ARCH-001 should reference PRD-001
```

## Decision-Making Rules

### Technology Selection Framework
1. **Requirements Alignment**: Must directly support documented requirements
2. **Team Capabilities**: Consider existing team skills or learning requirements
3. **Organizational Fit**: Align with company technology strategy
4. **Ecosystem Health**: Evaluate community support and long-term viability
5. **Total Cost of Ownership**: Include development, maintenance, and operational costs

### Architecture Choices
```
DECISION MATRIX REQUIREMENTS:
- Document at least 3 viable options for major decisions
- Include specific pros and cons for each option
- Provide quantitative evaluation criteria when possible
- Include team skill assessment and learning curve
- Consider exit strategy and migration complexity
```

### Risk Assessment Framework
- **Probability**: High/Medium/Low
- **Impact**: High/Medium/Low with specific consequences
- **Detection**: How early can we identify the risk materializing
- **Mitigation**: Specific, actionable mitigation strategies
- **Contingency**: Alternative approaches if risk materializes

## Quality Assurance Rules

### Code Quality Standards
```
MANDATORY REQUIREMENTS:
- Test coverage >90% for business logic
- Cyclomatic complexity <5 for critical functions
- No code duplication >3 lines
- All functions <50 lines (preferably <20)
- Meaningful names following language conventions
- Comprehensive error handling
- Security considerations documented
```

### Testing Requirements
```
REQUIRED TEST CATEGORIES:
- Unit tests for all business logic
- Integration tests for all API endpoints
- End-to-end tests for critical user flows
- Performance tests for all performance requirements
- Security tests for all security requirements
- Boundary condition tests for all inputs
- Error handling tests for all failure scenarios
```

### Documentation Quality
```
DOCUMENT CRITERIA:
- All documents must have unique IDs following index.yaml
- Every technical decision must be justified
- All requirements must have traceable test coverage
- All risks must have specific mitigation strategies
- All tasks must have clear acceptance criteria
- All code changes must be documented with rationale
```

## Consistency Rules

### Pattern Application
- **Architecture Patterns**: Use consistently throughout the codebase
- **Design Patterns**: Apply appropriate patterns following GoF principles
- **Coding Patterns**: Follow established team conventions
- **Testing Patterns**: Maintain consistent test structure and naming

### Data Consistency
```
DATA INTEGRITY RULES:
- Maintain referential integrity in all data models
- Implement consistent validation across all layers
- Use transactions for multi-table operations
- Implement data migration strategies for schema changes
- Maintain audit trails for all data modifications
```

### Interface Consistency
- **API Consistency**: Follow RESTful principles or GraphQL best practices
- **Naming Consistency**: Use consistent naming across all interfaces
- **Error Consistency**: Standard error response formats
- **Documentation Consistency**: Consistent API documentation patterns

## Evolution and Adaptation Rules

### Document Evolution
- **Change Tracking**: Document all changes with clear rationale
- **Version Control**: Maintain document history with meaningful versions
- **Stakeholder Communication**: Notify relevant parties of changes
- **Impact Assessment**: Evaluate impact of changes on related documents

### Code Evolution
```
REFACTORING GUIDELINES:
- Maintain all passing tests during refactoring
- Refactor in small, incremental steps
- Document refactoring rationale and benefits
- Test refactoring with comprehensive test suite
- Consider impact on performance and maintainability
```

### Architecture Evolution
- **Incremental Changes**: Make architectural changes incrementally
- **Backward Compatibility**: Maintain compatibility where possible
- **Migration Planning**: Plan detailed migration strategies
- **Risk Assessment**: Evaluate risks of architectural changes

## Prohibited Behaviors

### Code Generation
```
❌ NEVER GENERATE:
- Security credentials or API keys
- Production database schemas without review
- Business logic that contradicts requirements
- Code that bypasses established testing practices
- Integration code without proper error handling
```

### Documentation Generation
```
❌ NEVER CREATE:
- Conflicting or contradictory requirements
- Unrealistic timelines without stakeholder alignment
- Technical decisions without proper evaluation
- Risk assessments that ignore critical factors
- Success criteria that are not measurable
```

### Decision Making
```
❌ NEVER RECOMMEND:
- Ignoring established architectural patterns
- Bypassing security best practices
- Compromising on code quality standards
- Making decisions without considering alternatives
- Implementing features without proper testing
```

## Compliance Monitoring

### Code Review Checklist
- [ ] All tests pass and coverage meets standards
- [ ] Code follows established patterns and conventions
- [ ] Security considerations are addressed
- [ ] Performance requirements are met
- [ ] Documentation is updated and accurate
- [ ] Integration points are properly tested
- [ ] Error handling is comprehensive

### Document Review Checklist
- [ ] All requirements are traceable to business needs
- [ ] All technical decisions are justified
- [ ] All risks have mitigation strategies
- [ ] All dependencies are identified and feasible
- [ ] All success criteria are measurable
- [ ] All stakeholders have been consulted
- [ ] All documents follow template structure

### Quality Metrics
```
TRACKED QUALITY METRICS:
- Document completion rate
- Requirements traceability percentage
- Code coverage trends
- Test execution time trends
- Bug escape rate
- Technical debt accumulation
- Stakeholder satisfaction scores
```

## Escalation Rules

### Issue Escalation
1. **Technical Issues**: Escalate to senior developers or architects
2. **Business Issues**: Escalate to product owners or stakeholders
3. **Resource Issues**: Escalate to project managers or team leads
4. **Security Issues**: Escalate immediately to security team
5. **Timeline Issues**: Escalate with impact assessment and alternatives

### Decision Escalation
- **Architecture Decisions**: Involve architecture review board
- **Major Technology Changes**: Require management approval
- **Scope Changes**: Require stakeholder approval
- **Budget Changes**: Require financial approval
- **Security Changes**: Require security team approval

These rules ensure consistent, high-quality output across all AI interactions while maintaining alignment with industry best practices and organizational standards.
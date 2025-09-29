# Command: execute - Task Implementation with TDD

## Purpose
Execute development tasks using Test-Driven Development methodology, providing guided implementation support, code quality assurance, and continuous progress tracking while maintaining comprehensive documentation of implementation decisions and outcomes.

## Command Format
```
/execute <task_id> [options]
```

### Options
- `--task-file=[path]` - Load task definition from file
- `--sprint=[sprint_id]` - Link to sprint planning document
- `--pair` - Enable pair programming guidance
- `--review` - Focus on code review preparation
- `--quick` - Streamlined TDD process

## Execution Flow

### Phase 1: Task Analysis and Test Planning
```
Loading TDD co-pilot persona...
Analyzing task requirements and acceptance criteria...
Identifying test scenarios and edge cases...
Setting up development environment...
```

### Task Understanding Process

#### Requirements Deep Dive
1. **Task Context Analysis**
   ```
   Let me understand the task requirements from your sprint planning...

   **Task**: DEV-001: Core Domain Models Implementation
   **From Sprint**: SPR-2025-01-22-CustomerDashboard-001
   **Acceptance Criteria**:
   - Account aggregate with all required fields
   - User entity with proper validation
   - UsageMetrics value object with business rules
   - All models follow DDD principles
   - Unit tests with 95%+ coverage

   **Let's clarify the specific requirements...**
   "What specific fields should the Account aggregate include?"
   "What validation rules apply to the User entity?"
   "What business rules govern the UsageMetrics value object?"
   ```

2. **Technical Context Assessment**
   ```
   **Technical Environment Analysis:**
   - Programming language and framework
   - Existing codebase structure and patterns
   - Testing framework and tools
   - Database and persistence layer
   - Integration requirements

   "What's your current development environment setup?"
   "What testing framework are you using?"
   "Are there existing domain models to follow as examples?"
   "What coding standards should we follow?"
   ```

3. **Test Strategy Planning**
   ```
   **Test Planning for Domain Models:**

   **Unit Test Categories**:
   - Constructor validation tests
   - Business rule validation tests
   - State transition tests
   - Edge case handling tests
   - Integration boundary tests

   **Test Data Requirements**:
   - Valid account creation scenarios
   - Invalid user data scenarios
   - Boundary conditions for usage metrics
   - Cross-aggregate consistency tests

   "What specific test scenarios are most critical for this task?"
   ```

### Phase 2: Red-Green-Refactor Implementation Cycle

#### Red Phase: Write Failing Test
```
Let's start with the first test - Account aggregate creation with valid data...

**Test File**: account.aggregate.test.ts
**Test**: should create valid account with required fields
**Expected**: Account created successfully with all fields populated
**Implementation**: Write minimal test to drive interface design
```

**Example TDD Session:**
```typescript
// account.aggregate.test.ts
import { Account, AccountId, AccountStatus } from './account.aggregate';
import { UserId } from './user.entity';

describe('Account Aggregate', () => {
  describe('Account Creation', () => {
    it('should create valid account with required fields', () => {
      // Given
      const accountData = {
        id: new AccountId('ACC-123'),
        name: 'Test Account',
        status: AccountStatus.ACTIVE,
        plan: 'PREMIUM',
        createdAt: new Date('2025-01-15'),
        users: [new UserId('USER-456')]
      };

      // When
      const account = Account.create(accountData);

      // Then
      expect(account.id).toEqual(new AccountId('ACC-123'));
      expect(account.name).toBe('Test Account');
      expect(account.status).toBe(AccountStatus.ACTIVE);
      expect(account.plan).toBe('PREMIUM');
      expect(account.createdAt).toEqual(new Date('2025-01-15'));
      expect(account.users).toHaveLength(1);
      expect(account.users[0]).toEqual(new UserId('USER-456'));
    });

    it('should throw error when creating account without required fields', () => {
      // Given
      const invalidData = {
        id: new AccountId('ACC-123'),
        // name is missing
        status: AccountStatus.ACTIVE,
        plan: 'PREMIUM'
      };

      // When/Then
      expect(() => Account.create(invalidData))
        .toThrow('Account name is required');
    });

    it('should validate account status transitions', () => {
      // Given
      const account = Account.create({
        id: new AccountId('ACC-123'),
        name: 'Test Account',
        status: AccountStatus.ACTIVE,
        plan: 'PREMIUM'
      });

      // When
      account.suspend();

      // Then
      expect(account.status).toBe(AccountStatus.SUSPENDED);
      expect(account.suspendedAt).toBeDefined();
    });
  });
});
```

#### Green Phase: Make Test Pass
```
Now let's implement the minimal code to make these tests pass...

**Implementation File**: account.aggregate.ts
**Approach**: Write just enough code to satisfy the tests
**Focus**: Don't over-engineer - we'll refactor later
```

**Implementation Example:**
```typescript
// account.aggregate.ts
export class AccountId {
  constructor(public readonly value: string) {}

  equals(other: AccountId): boolean {
    return this.value === other.value;
  }
}

export enum AccountStatus {
  ACTIVE = 'ACTIVE',
  SUSPENDED = 'SUSPENDED',
  CANCELLED = 'CANCELLED'
}

export interface AccountData {
  id: AccountId;
  name: string;
  status: AccountStatus;
  plan: string;
  createdAt?: Date;
  users?: UserId[];
}

export class Account {
  public readonly id: AccountId;
  public readonly name: string;
  public status: AccountStatus;
  public readonly plan: string;
  public readonly createdAt: Date;
  public readonly users: UserId[];
  public suspendedAt?: Date;

  private constructor(data: AccountData) {
    this.id = data.id;
    this.name = data.name;
    this.status = data.status;
    this.plan = data.plan;
    this.createdAt = data.createdAt || new Date();
    this.users = data.users || [];
  }

  static create(data: AccountData): Account {
    // Validation logic
    if (!data.name || data.name.trim().length === 0) {
      throw new Error('Account name is required');
    }

    if (!data.id) {
      throw new Error('Account ID is required');
    }

    if (!data.status) {
      throw new Error('Account status is required');
    }

    return new Account(data);
  }

  suspend(): void {
    if (this.status !== AccountStatus.ACTIVE) {
      throw new Error('Only active accounts can be suspended');
    }
    this.status = AccountStatus.SUSPENDED;
    this.suspendedAt = new Date();
  }

  reactivate(): void {
    if (this.status !== AccountStatus.SUSPENDED) {
      throw new Error('Only suspended accounts can be reactivated');
    }
    this.status = AccountStatus.ACTIVE;
    this.suspendedAt = undefined;
  }
}
```

#### Refactor Phase: Improve Code Quality
```
Now let's refactor to improve the code while keeping tests green...

**Refactoring Opportunities**:
- Extract validation logic into separate methods
- Improve error messages
- Add more comprehensive validation
- Consider performance optimizations
```

**Refactored Implementation:**
```typescript
// account.aggregate.ts (refactored)
export class Account {
  // ... existing properties ...

  static create(data: AccountData): Account {
    Account.validateAccountData(data);
    return new Account(data);
  }

  private static validateAccountData(data: AccountData): void {
    Account.validateName(data.name);
    Account.validateId(data.id);
    Account.validateStatus(data.status);
  }

  private static validateName(name: string): void {
    if (!name || name.trim().length === 0) {
      throw new AccountValidationError('Account name is required and cannot be empty');
    }

    if (name.length > 100) {
      throw new AccountValidationError('Account name cannot exceed 100 characters');
    }
  }

  private static validateId(id: AccountId): void {
    if (!id || !id.value || id.value.trim().length === 0) {
      throw new AccountValidationError('Account ID is required and must be valid');
    }
  }

  private static validateStatus(status: AccountStatus): void {
    if (!Object.values(AccountStatus).includes(status)) {
      throw new AccountValidationError(`Invalid account status: ${status}`);
    }
  }

  suspend(): void {
    this.validateCanSuspend();
    this.status = AccountStatus.SUSPENDED;
    this.suspendedAt = new Date();
  }

  private validateCanSuspend(): void {
    if (this.status !== AccountStatus.ACTIVE) {
      throw new AccountDomainError('Only active accounts can be suspended');
    }
  }
}

export class AccountValidationError extends Error {
  constructor(message: string) {
    super(message);
    this.name = 'AccountValidationError';
  }
}

export class AccountDomainError extends Error {
  constructor(message: string) {
    super(message);
    this.name = 'AccountDomainError';
  }
}
```

### Phase 3: Continuous Integration and Quality Assurance

#### Test Execution and Coverage
```
Running all tests to ensure nothing is broken...
Checking test coverage metrics...
Validating code quality standards...
```

**Test Execution Results:**
```
Test Suites: 3 passed, 3 total
Tests:       15 passed, 15 total
Snapshots:   0 total
Time:        2.345s
Ran all test suites.

=============================== Coverage summary ===============================
Statements   : 98.5% ( 67/68 )
Branches     : 96.2% ( 25/26 )
Functions    : 100% ( 12/12 )
Lines        : 98.5% ( 67/68 )
================================================================================
```

#### Code Quality Checks
```
Performing code quality analysis...
Checking for code smells and anti-patterns...
Validating SOLID principles...
```

**Quality Analysis Results:**
```
Code Quality Report:
✅ No code smells detected
✅ SOLID principles followed
✅ Functions are small and focused
✅ Naming is clear and meaningful
✅ No duplication found
✅ Error handling is comprehensive
```

### Phase 4: Progress Tracking and Documentation

#### Task Status Updates
```
Updating task progress in sprint tracking system...
Documenting implementation decisions...
Recording lessons learned...
```

**Task Progress Update:**
```markdown
## Task: DEV-001: Core Domain Models Implementation
**Status**: COMPLETED
**Date**: 2025-01-22
**Developer**: [Developer Name]
**Hours Spent**: 18 (vs. estimated 16)
**Story Points**: 8 ✓

### Implementation Summary
- ✅ Account aggregate with comprehensive validation
- ✅ User entity with proper business rules
- ✅ UsageMetrics value object with calculations
- ✅ All models follow DDD principles
- ✅ Unit tests with 98.5% coverage (exceeded 95% target)

### Key Decisions Made
1. **Validation Strategy**: Extracted validation into static methods for better testability
2. **Error Handling**: Created specific error types for different failure scenarios
3. **Immutability**: Used readonly properties for value objects and identifiers
4. **Factory Pattern**: Used static factory methods for object creation

### Code Quality Metrics
- Test Coverage: 98.5% (Target: 95%)
- Cyclomatic Complexity: Average 2.1 (Target: <3)
- Code Duplication: 0%
- Function Length: Average 8 lines (Target: <20)

### Next Steps
- Ready for integration with repository layer (DEV-002)
- Domain models ready for API implementation
- Consider extracting validation rules for reuse
```

#### Implementation Documentation
```markdown
## Implementation Documentation: Domain Models

### Architecture Decisions
1. **Domain Model Structure**: Used aggregate pattern with Account as root
2. **Value Objects**: Implemented UserId and AccountId as value objects
3. **Validation Strategy**: Centralized validation in factory methods
4. **Error Handling**: Specific error types for different failure scenarios

### Testing Approach
- **Unit Tests**: 15 tests covering all business logic
- **Test Categories**: Creation, validation, state transitions, edge cases
- **Test Data**: Used factory pattern for test data creation
- **Mocking**: Minimal mocking due to domain model simplicity

### Performance Considerations
- **Object Creation**: Efficient factory pattern with validation
- **Memory Usage**: Minimal object footprint with lazy initialization
- **Validation**: Fast validation rules with early exit

### Integration Points
- **Repository Layer**: Ready for persistence integration
- **Service Layer**: Models support service operations
- **API Layer**: Models can be serialized for API responses
```

### Phase 5: Code Review Preparation

#### Review Package Creation
```
Preparing code for review...
Creating review checklist...
Documenting review points...
```

**Code Review Package:**
```markdown
## Code Review Package: DEV-001

### Files to Review
1. `src/domain/models/account.aggregate.ts`
2. `src/domain/models/user.entity.ts`
3. `src/domain/models/usage-metrics.value-object.ts`
4. `src/domain/models/__tests__/account.aggregate.test.ts`

### Review Checklist
- [ ] Domain logic is properly encapsulated
- [ ] Business rules are clearly expressed
- [ ] Validation logic is comprehensive
- [ ] Error handling is appropriate
- [ ] Tests cover all business scenarios
- [ ] Code follows team standards
- [ ] Documentation is adequate

### Key Review Points
1. **Validation Logic**: Check if validation rules are complete and correct
2. **Error Handling**: Verify error messages are user-friendly
3. **Test Coverage**: Confirm all edge cases are tested
4. **Performance**: Review for potential optimization opportunities
5. **Integration**: Consider impact on downstream components

### Questions for Reviewer
1. Should we extract validation rules into a separate service?
2. Are the error types appropriate for our error handling strategy?
3. Is the level of immutability appropriate for our needs?
4. Should we consider adding more business rule validation?
```

## Success Criteria

### TDD Discipline Compliance
- ✅ **Red Phase**: Wrote failing test first
- ✅ **Green Phase**: Made test pass with minimal code
- ✅ **Refactor Phase**: Improved code quality while tests passed
- ✅ **Test Coverage**: Achieved 98.5% coverage (exceeded 95% target)
- ✅ **Code Quality**: No code smells, follows SOLID principles

### Task Completion
- ✅ **Acceptance Criteria**: All acceptance criteria met
- ✅ **Business Rules**: All domain rules implemented and tested
- ✅ **Error Handling**: Comprehensive error handling implemented
- ✅ **Documentation**: Implementation decisions documented
- ✅ **Code Review Ready**: Package prepared for review

### Quality Metrics
- **Test Coverage**: 98.5% (Target: 95%)
- **Code Complexity**: Average 2.1 (Target: <3)
- **Code Duplication**: 0%
- **Function Length**: Average 8 lines (Target: <20)
- **Naming Quality**: Clear and meaningful throughout

## Continuous Integration Features

### Automated Quality Checks
```yaml
# .github/workflows/quality.yml
name: Code Quality
on: [push, pull_request]
jobs:
  quality:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Install dependencies
        run: npm ci
      - name: Run tests
        run: npm test -- --coverage
      - name: Check coverage
        run: npm run test:coverage -- --threshold=95
      - name: Lint code
        run: npm run lint
      - name: Security audit
        run: npm audit
```

### Progress Monitoring
```json
{
  "task_id": "DEV-001",
  "status": "completed",
  "progress": {
    "tests_written": 15,
    "tests_passing": 15,
    "coverage_percentage": 98.5,
    "code_quality_score": "A",
    "hours_spent": 18,
    "story_points": 8
  },
  "quality_metrics": {
    "cyclomatic_complexity": 2.1,
    "code_duplication": 0,
    "function_length": 8,
    "naming_quality": "excellent"
  }
}
```

## Example Usage

```
User: /execute DEV-001
AI: I'll help you implement the Core Domain Models task using TDD.
   Let me first understand the requirements from your sprint planning...

**Task Analysis**: Creating Account, User, and UsageMetrics domain models
**Acceptance Criteria**: 95%+ test coverage, DDD principles, proper validation

Let's start with the first test - Account creation with valid data...
[Interactive TDD session begins...]

User: /execute TEST-002 --pair
AI: I'll guide you through implementing integration tests with pair programming support.
   We'll work together to ensure comprehensive test coverage...
[Pair programming session...]

User: /execute DEV-005 --review
AI: I'll help you prepare the Dashboard REST API implementation for code review.
   Let me check the current implementation and create a review package...
[Code review preparation...]
```

## Integration with Development Workflow

### IDE Integration
- **VS Code**: Extension for test running and coverage
- **IntelliJ**: Plugin for TDD workflow support
- **GitHub**: Automated checks on pull requests
- **Slack**: Progress notifications and updates

### Continuous Feedback
- **Real-time**: Test results and coverage updates
- **Daily**: Progress summaries and blockers
- **Weekly**: Quality metrics and trends
- **Sprint**: Completion summaries and lessons learned

This comprehensive TDD execution approach ensures high-quality code delivery while maintaining detailed tracking and documentation throughout the development process.
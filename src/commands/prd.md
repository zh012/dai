# Command: prd - Product Requirements Document Creation

## Purpose
Facilitate the interactive creation of comprehensive Product Requirement Documents through collaborative sessions that translate business ideas into detailed, actionable requirements using proven product management methodologies.

## Command Format
```
/prd <feature_name> [options]
```

### Options
- `--template=[template_name]` - Use specific PRD template variant
- `--interactive` - Enable full interactive mode (default)
- `--quick` - Minimize interactive steps for faster creation
- `--link=[doc_id]` - Link to existing context/design documents

## Execution Flow

### Phase 1: Requirements Discovery Session
```
Loading product management persona...
Initializing interactive requirements session...
Establishing baseline understanding...
```

### Interactive Discovery Process

#### Session 1: Problem Definition (15-30 minutes)
1. **Problem Exploration**
   ```
   "Let's start by understanding the core problem. What specific pain point are you addressing?"
   "Who experiences this problem most severely?"
   "How are people solving this today?"
   "What happens if we don't address this problem?"
   ```

2. **Stakeholder Analysis**
   ```
   "Who are the primary stakeholders for this feature?"
   "What are their different needs and expectations?"
   "How will this feature impact their work/process?"
   "Who has the most to gain or lose from this solution?"
   ```

3. **Market Context**
   ```
   "What market trends or changes are driving this need?"
   "Are there competitive solutions? How does ours differ?"
   "What regulatory or compliance considerations apply?"
   "What would make this solution compelling?"
   ```

#### Session 2: User Understanding (20-35 minutes)
1. **User Persona Development**
   ```
   "Tell me about your primary user. What's their role?"
   "What are their daily challenges and frustrations?"
   "What motivates them? What are their goals?"
   "What would make their job easier or more effective?"
   ```

2. **User Journey Mapping**
   ```
   "Walk me through the user's current workflow."
   "Where are the biggest pain points or delays?"
   "What are the emotional highs and lows of their experience?"
   "Where do they currently feel most frustrated?"
   ```

3. **Solution Validation**
   ```
   "How would this user react to our proposed solution?"
   "What would make them excited about using this feature?"
   "What concerns or objections might they have?"
   "How would we measure success from their perspective?"
   ```

#### Session 3: Solution Definition (25-40 minutes)
1. **Feature Scope**
   ```
   "What are the must-have capabilities?"
   "What features would be nice to have but not essential?"
   "What are we intentionally excluding from this version?"
   "What would surprise users in a good way?"
   ```

2. **Acceptance Criteria Development**
   ```
   "How will we know when this feature is working correctly?"
   "What specific user actions should be possible?"
   "What error cases do we need to handle?"
   "What performance expectations exist?"
   ```

3. **Success Metrics Definition**
   ```
   "What would indicate that this feature is valuable?"
   "How could we measure user engagement or satisfaction?"
   "What business metrics should improve?"
   "How would we detect if this feature isn't working?"
   ```

### Phase 2: Requirements Synthesis
```
Synthesizing requirement inputs...
Generating comprehensive PRD structure...
Validating requirements completeness...
```

### Document Generation Process

#### Document ID Generation
```
Format: PRD-{YYYY}-{MM}-{DD}-001
Example: PRD-2025-01-15-CustomerDashboard
```

**Location**: `docs/prd/`

**Template**: `docs/templates/prd.md`

## Success Criteria
- **Requirements Completeness**: All essential requirements captured
- **User Story Quality**: Stories meet INVEST criteria
- **Acceptance Criteria Specificity**: All criteria are testable and specific
- **Stakeholder Alignment**: Approved by all key stakeholders
- **Document Quality**: Clear, comprehensive, and actionable

## Quality Assurance Checks
- ✅ All requirements trace back to business needs
- ✅ User stories follow INVEST criteria
- ✅ Acceptance criteria use Given-When-Then format
- ✅ Success metrics are measurable and time-bound
- ✅ Risks have concrete mitigation strategies
- ✅ Dependencies are clearly identified and feasible

## Next Steps After PRD Creation
- Create technical design for requirements ( /design command )
- Plan development sprints ( /plan command )
- Update requirements traceability matrix if exists
- Link PRD to related architecture documents

## Example Usage
```
User: /prd customer-dashboard
AI: I'll help you create a comprehensive Product Requirements Document
following Marty Cagan's Inspired methodology.

Let's start with understanding the core problem...
"What specific user pain point are you addressing with this dashboard?"
[Interactive session begins...]

User: /prd payment-integration --link=ARCH-2025-01-15-001
AI: Great! I can see you've already established architecture guidelines.
Let's ensure our requirements align with the technical foundation...
[Interactive session with architecture context...]

User: /prd mobile-app --quick
AI: I'll create a streamlined PRD with minimal interactive steps...
[Accelerated session...]
```
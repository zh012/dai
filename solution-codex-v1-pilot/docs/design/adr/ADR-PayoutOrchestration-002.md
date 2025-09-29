Backlinks: DSN-PayoutOrchestration-20240522.md, SDDK-TMP-DSN-0001

# ADR-PayoutOrchestration-002 Use Postgres for Payout State Store

## Context
Payout state transitions must be strongly consistent and queryable for audits.

## Decision
Use managed Postgres with HA for storing `PayoutBatch` aggregates and audit metadata.

## Status
Proposed 2024-05-22.

## Consequences
- ✅ Leverages existing operational expertise.
- ✅ Provides ACID guarantees for compliance needs.
- ⚠️ Requires careful connection pooling under load.

## Related Artifacts
- `DSN-PayoutOrchestration-20240522`
- `PRD-AtlasPay-v0.1.0`

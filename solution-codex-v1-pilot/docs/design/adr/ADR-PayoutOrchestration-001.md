Backlinks: DSN-PayoutOrchestration-20240522.md, SDDK-TMP-DSN-0001

# ADR-PayoutOrchestration-001 Adopt Event-Driven Orchestration Service

## Context
We must orchestrate payout batches, compliance checks, and partner notifications while keeping bounded contexts decoupled.

## Decision
Implement a dedicated `atlaspay-orchestration` service that communicates via Kafka domain events with compliance and webhook services.

## Status
Proposed 2024-05-22.

## Consequences
- ✅ Enables independent scaling of orchestration components.
- ✅ Supports future replay and audit requirements.
- ⚠️ Requires managing Kafka infrastructure and schema discipline.

## Related Artifacts
- `DSN-PayoutOrchestration-20240522`
- `PRD-AtlasPay-v0.1.0`

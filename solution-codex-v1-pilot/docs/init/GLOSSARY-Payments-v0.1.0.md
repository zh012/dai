Backlinks: SDDK-TMP-GLS-0001, INIT-AtlasPay-20240515.md, CTXMAP-AtlasPay-20240515.md

# GLOSSARY-Payments-v0.1.0 Ubiquitous Language Glossary

- **Runtime name**: `docs/init/GLOSSARY-Payments-v0.1.0.md`
- **Purpose**: Maintain shared Meaning of terms across the domain and technical teams.

## Metadata
- Context: AtlasPay payouts
- Maintainer: Compliance Officer
- Version: v0.1.0
- Source Artifacts: `INIT-AtlasPay-20240515`, `CTXMAP-AtlasPay-20240515`

## Glossary Entries
| Term | Definition | Domain Owner | Related Terms |
| --- | --- | --- | --- |
| payout batch | Collection of seller disbursements initiated together | Product Manager | settlement state |
| settlement state | Status indicator (Queued, InFlight, Settled, Failed) for a payout | AtlasPay Core Team | payout batch |
| compliance clearance | Verification step ensuring payout meets AML/KYC requirements | Risk & Compliance Team | audit log |
| audit log | Immutable record of compliance decisions and overrides | Risk & Compliance Team | compliance clearance |
| partner webhook | Notification sent to partners on payout status changes | Developer Experience Team | settlement state |

## Naming Conventions
- Services use `atlaspay-<context>` naming (e.g. `atlaspay-orchestration`).
- Kafka events use past tense names (e.g. `PayoutSettled`).
- API endpoints favor nouns + verbs (e.g. `/payouts/{id}/settlement`).

## Changes Since Last Version
| Term | Change | Reason |
| --- | --- | --- |
| _Initial version_ | N/A | N/A |

## Open Questions
| Term | Clarification Needed | Owner |
| --- | --- | --- |
| settlement state | How do we expose failed reasons? | Product Manager |


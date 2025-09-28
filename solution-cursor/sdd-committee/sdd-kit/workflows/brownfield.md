---
title: Brownfield Project Workflow (Modernization)
version: 0.1.0
---

## Step 1 — Discovery
- Reverse context map; capture UL; baseline 
- Characterization tests for critical flows

## Step 2 — Target Design
- New ; ; strangler plan; migration strategy

## Step 3 — Contract First
- Define/lock contracts; add consumer-driven tests

## Step 4 — Incremental Delivery (TDD)
- For each slice: write tests → adapters/ACL → migrate → flip flag

## Step 5 — Cutover & Cleanup
- Backfill/migrations; remove legacy paths; update RTM

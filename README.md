# ops-evidence-factory

Templates and patterns to run infrastructure work like a factory:
**plan → change → prove → restore → publish (sanitized)**.

This repo is the public, fake-data version of a real ops system. It’s designed so you can:
- ship changes fast without chaos
- generate audit-friendly evidence
- prove you can restore after breaking things

## What’s inside
- **Change Packets (CP-###)**: the unit of work (why, scope, steps, rollback, evidence)
- **Baselines (BL-###)**: “known-good” snapshots of config/state (sanitized)
- **Restore Drills (RD-###)**: scripted recovery exercises with timestamps + proof
- **Receipts**: screenshots/log excerpts/check outputs that demonstrate completion

## Recommended workflow
1. Create a Change Packet (`CP-###`) for any meaningful change.
2. Capture/refresh a baseline (`BL-###`) before and after.
3. Run a restore drill (`RD-###`) on a schedule (or after major changes).
4. Publish a sanitized slice (what you’re comfortable showing).

## Folder guide (suggested)
```text
templates/
  change-packet.md
  baseline.md
  restore-drill.md
examples/
  CP-001-example/
    CP-001.md
    evidence/
    baseline/
    restore/
docs/
  naming-conventions.md
  sanitization-rules.md

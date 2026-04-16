---
name: tidy-memory
description: Use when memory or CLAUDE.md feels bloated, stale, or inconsistent. Audits all memory files and CLAUDE.md for duplicates, contradictions, and outdated entries — then proposes changes for user approval before touching anything.
---

Audit memory and CLAUDE.md, then let the user decide what to apply.

## Why a subagent

The session that wrote these files is the worst auditor for them — it carries the same assumptions and blind spots.
A fresh subagent with no prior context has no attachment to what was saved and will catch what you can't.

## Proposal format

Each item in the proposal:

```
[ACTION] target
Reason: one line explaining why
Proposed change: exactly what would be written/deleted/merged
```

Actions: `MERGE`, `DELETE`, `EDIT`, `ADD TO INDEX`, `REMOVE FROM INDEX`

## Step 1: Dispatch the auditor

Spawn a **read-only** subagent and instruct it to read all files in the memory directory and `CLAUDE.md` (if it exists), then look for:

- **Duplicates** — two memories covering the same ground. Propose merging into the stronger one.
- **Contradictions** — memories that conflict with each other or with current code/config. Propose keeping what's true now.
- **Stale entries** — decisions or context that no longer applies. Propose deleting.
- **Bloat in CLAUDE.md** — anything derivable from the code, already obvious, or no longer relevant. Propose cutting.
- **MEMORY.md index drift** — entries pointing to deleted files, files that exist but aren't indexed, or index descriptions that no longer match the actual file content. Propose fixes.

Instruct the subagent to return a proposal using the format above — not prose.

## Step 2: Present and confirm

Present the full proposal to the user, grouped by action type. Ask: "Which of these should I apply?"

Wait for their response, then apply only what they approve — nothing more.

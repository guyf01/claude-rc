---
name: reflect
description: Invoke after a decision, correction, natural pause, or before session end — persists what was learned before it disappears.
disable-model-invocation: true
---

Reflect on `$ARGUMENTS` — or the full conversation if no topic is specified.

The conversation is ephemeral. CLAUDE.md and memory are not. This skill transfers signal from one to the other before it disappears.

## Step 1: Mine the conversation

Scan the full conversation for signal worth keeping. For each candidate, ask: *would a future session benefit from knowing this?
**Filter:**
If it required discussion, a correction, or a deliberate decision — save it. "Obvious in hindsight" is not a reason to skip.
If it's derivable from the code or git history, ephemeral task state, or already in CLAUDE.md/memory — skip it.

Look for:
- **Conventions discovered** — naming patterns, code style, file format rules, structural standards
- **Architectural decisions + rationale** — choices made and WHY, especially non-obvious ones
- **Technical dead ends** — approaches tried and abandoned, and why they failed
- **Mistakes Claude made** — things you got wrong that the user had to correct
- **User preferences** — how this person likes to work, what they explicitly don't want
- **Project context** — goals, constraints, stakeholders, deadlines (convert relative dates to absolute)

## Step 2: Route each finding

Two destinations. One mental model:

> **CLAUDE.md** = what a fresh Claude session needs to work correctly in this project
> **Memory** = what Claude learned about this human

**The test:** *"Would this go in a project README or onboarding doc?"* → CLAUDE.md. *"Is this about how Claude should interact with this specific person?"* → memory.

| Finding | Destination | Why |
|---|---|---|
| Conventions discovered | CLAUDE.md | Project rules, not personal |
| Architectural decisions + rationale | CLAUDE.md | Fresh session needs the WHY |
| Technical dead ends | CLAUDE.md | Avoid repeating failed approaches |
| Mistakes Claude made | Memory | Behavioral correction for Claude |
| User preferences | Memory | Personal to this human |
| Project context (goals, deadlines) | Memory | Situational, not normative |

**Hard case:** "What didn't work" splits — technical failure → CLAUDE.md, style/approach failure → memory.

## Step 3: Save

Write each finding to its destination. Follow the system memory instructions for memory file format and types.

## Step 4: Report

One short list:
- What went to CLAUDE.md (topic only)
- What went to memory (topic only)
- What was skipped and why (only if significant)

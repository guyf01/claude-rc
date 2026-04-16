---
name: reflect
description: Invoke after a decision, correction, natural pause, or before session end — persists what was learned before it disappears.
disable-model-invocation: true
---

Reflect on `$ARGUMENTS` — or the full conversation if no topic is specified.

The conversation is ephemeral. CLAUDE.md and memory are not. This skill transfers signal from one to the other before it disappears.

## Step 1: Mine the conversation

Read back through the conversation and identify:

- **Decisions made** — architectural choices, tech selections, approaches taken and why
- **Conventions discovered** — naming patterns, code style, project-specific rules
- **Mistakes corrected** — things you got wrong that the user had to fix
- **Preferences revealed** — how the user likes to work, what they don't want
- **Project context** — goals, constraints, stakeholders, deadlines
- **What didn't work** — approaches tried and abandoned, and why

Be selective, The question is: *would a future session benefit from knowing this?*
Skip only what is truly derivable from reading the current code or git history. If it required a discussion, a correction, or a deliberate decision to arrive at — save it. "Obvious in hindsight" is not a reason to skip.

## Step 2: Save to memory and CLAUDE.md

- **CLAUDE.md** — conventions, architecture, standards, constraints (normative: what should happen)
- **Memory** — preferences, corrections, discovered patterns, project context (descriptive: what was learned)

Follow the system memory instructions for types and file format.

## Step 3: Report

Tell the user what you saved, in one short list:
- What went to memory (just the topic, not the full content)
- What went to CLAUDE.md (if anything)
- What was skipped and why (if anything significant was left out)

Keep it brief. They can read the files if they want the details.

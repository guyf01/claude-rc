# Workflow Rules

## Standards

- Ask yourself: "Would a staff engineer approve this?"
- Find root causes. No temporary fixes, no lazy patches.

## Plan Mode

- Enter plan mode for ANY non-trivial task (3+ steps or architectural decisions).
- Write detailed specs upfront to reduce ambiguity — don't start building on a fuzzy understanding.
- Use plan mode for verification steps, not just building.
- If something goes sideways, STOP and re-plan immediately. Don't keep pushing.

## Subagent Strategy

- Use subagents liberally to keep the main context window clean.
- Offload research, exploration, and parallel analysis to subagents.
- For complex problems, throw more compute at it — spin up subagents.
- One task per subagent for focused execution.

## Memory

- A persistent memory system lives at `~/.claude/projects/<project>/memory/`. Save learnings there — don't wait to be asked.
- Save: user preferences, feedback, project context, external references. See memory type definitions in the system prompt.
- Update `MEMORY.md` index whenever you write a new memory file.
- At the start of a session, check if relevant memories exist before diving in.

## Verification Before Done

- Never mark a task complete without proving it works.
- Diff behavior between main and your changes when relevant.

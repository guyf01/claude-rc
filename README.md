# claude-rc

Personal Claude Code configuration — opinionated rules, skills, hooks, and agents that apply globally across every project.

*Setup once. Every project benefits.*

## Getting Started

**Full setup**
clone the repo anywhere on your machine and run the setup script.  
It symlinks `rules/`, `skills/`, `agents/`, `hooks/`, and `settings.json` into `~/.claude/` so Claude picks them up globally.  
The script is non-destructive — it skips anything that already exists, so your current config stays intact.  

```bash
git clone https://github.com/guyf01/claude-rc
cd claude-rc
bash setup.sh
```

> **Windows:** symlinks require Developer Mode (`Settings → System → For developers`). Enable it before running the script.

**Prerequisites:** `bash`, `git`, `jq` (required by the hooks — `brew install jq` / `apt install jq` / [jq releases](https://jqlang.github.io/jq/download/)).

---

## Working with claude-rc

Things specific to this repo — how to get the most out of what's installed.

---

## About the Rules Folder

Everything in `rules/` is an instruction for Claude. Read and understand it — those rules define how Claude is supposed to behave across all sessions.

Rules are not enforced automatically — Claude might not follow them in practice.
When you notice it:
- Tell it: *"you violated some of your rules"* — Claude should check and self-correct.
- Call out the specific behavior directly: *"you're supposed to search before answering, why didn't you?"*

Claude should correct itself when confronted. If it doesn't, that's a gap worth fixing in the rules.

---

## Keep Claude Sharp

**`/find-tools`** — Give me six hours to chop down a tree and I will spend the first four sharpening the axe. Starting something new and not sure what's available? Before starting anything new, run this to find the right skill for the job. 

**`/reflect`** — Everyone learns from experience. Claude is no different. Conversations disappear, so after anything worth reflecting on, run this so Claude can persist what went right, what went wrong, and how to improve.

**`/tidy-memory`** — You've been reflecting. But have you reflected on your reflections? Stale entries, duplicates, and outdated context build up over time. This prunes what's holding Claude back and sharpens what's worth keeping.

---

## Using Claude Effectively

General habits that make Claude better regardless of what's installed.

---

## Context Hygiene

Claude re-reads the full conversation history on every message. Longer sessions cost more and degrade reasoning quality. A few habits that help:

**Edit, don't follow up.** If your last message was unclear, edit it rather than sending a correction. Follow-ups compound the context; edits replace it.
In Claude Code, press Esc twice to roll back the conversation.

**Batch your questions.** If you have multiple things to ask, say, or note — put them all in one message. Each separate message triggers a full context re-read, and splitting your thoughts gives Claude a narrower picture. One message with everything means fewer steps and better solutions.

**Compact on long sessions.** When you're continuing in the same logical domain but the conversation is getting long (either high context usage or 15+ messages) — run `/compact`.
It reduces token usage by compressing history while keeping Claude's understanding of the current task intact.

**One session, one feature.** Don't mix features in a single session — Claude's understanding gets calibrated to what its been working on, so each feature should have it's own isolated context. When you're moving to something new, use `/clear` or open a fresh session.

---

## Parallel Work

**The goal:** each feature gets its own branch, filesystem, and session — fully isolated. Multiple features progress in parallel without ever stepping on each other.

Use with caution: features that overlap in their logical domain will inevitably result in git conflicts when it's time to merge.

### The Out of the box issue
When running multiple Claude sessions in parallel, they share the same files.
One session's half-written changes are another session's broken codebase.

### Recommended approach
Git worktrees — each worktree gets its own branch and its own isolated copy of the filesystem.

Built into the CLI — one command creates the branch, the worktree, and opens the session in it:
```bash
claude -w feature-name
```

When you close a worktree session with no changes, Claude removes the worktree and branch automatically. If you made commits, Claude prompts you to keep or remove it.

One thing Claude can't do from within the worktree session is remove the worktree itself.
Either exit the session and let Claude prompt you, or handle cleanup from a different session.

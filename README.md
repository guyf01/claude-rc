<div align="center">

# claude-rc

## A sharper Claude. Every project. Every session.

</div>

<br>

## Setup Guide

Clone the repo anywhere on your machine and run the setup script.

It symlinks `rules/`, `skills/`, `agents/`, `hooks/`, and `settings.json` into `~/.claude/` so Claude picks them up globally.

> [!IMPORTANT]
> The script skips anything that already exists, so your current config stays intact.

```bash
git clone https://github.com/guyf01/claude-rc

cd claude-rc

bash setup.sh
```

> [!NOTE]
> **Windows:**  
Symlinks require Developer Mode (`Settings → System → For developers`).

<br>

---

<br>

## Working with claude-rc

How to get the most out of this repository.

### About the Rules Folder

`rules/` contains **passive** instructions, automatically loaded into context at the start of every session.

Read and understand them, those rules define how Claude is **supposed** to behave across all sessions.

> [!WARNING]
>Rules are automatically loaded, but not enforced. Claude might deviate from them in practice.  

When you notice Claude is misbehaving, call it out:
- *"you violated some of your rules"*
- *"you're supposed to search before answering, why didn't you?"*

Claude should correct itself when confronted.  
> [!TIP]
> If it doesn't, consider installing the Claude whip to teach the clanker some manners.

<br>

### Keep Claude Sharp

#### /find-tools
*"Give me six hours to chop down a tree and I will spend the first four sharpening the axe."*  
Starting something new? Not sure what's available?  
Before starting anything new, run this to find the right skill for the job. 

#### /council
*"It's difficult to see the picture when you're inside the frame."*  
About to make a critical decision? Not sure what to do? Five advisors tear it apart from every angle, peer-review each other, and a chairman hands you a verdict.

#### /reflect
*"Everyone learns from experience. Claude is no different."*  
Sessions disappear, so after anything worth reflecting on, run this so Claude can record what went right, what went wrong, and how to improve.

#### /tidy-memory
*"You've been reflecting. But have you reflected on your reflections?"*  
Stale entries, duplicates, and outdated context build up over time.  
This prunes what's holding Claude back and sharpens what's worth keeping.

<br>

---

<br>

## Using Claude Effectively

General habits that make Claude better regardless of what's installed.


### Context Engineering

Context engineering is about giving the model the right information to do what you need.  
A well-written prompt with poor context leads to poor results.  
> [!IMPORTANT]
> The instruction tells the model *how* to behave, but context determines *what it's reasoning over*.

#### Prompt Engineering

Prompt engineering is focused on instructions to the llm.  
How you tell the model to behave, what role to take, what constraints to apply, what format to produce.

**What makes a good prompt:**

**Role** — tell the model what it is. A model told it's a senior security engineer reasons differently than one given no framing at all.

**Task** — be explicit about what you want, not just the topic. "Review this for SQL injection" is sharper than "look at this code."

**Format** — specify the output structure. Bullet list, numbered steps, table, prose — if you don't say, the model decides, and it may not match what you need.

**Constraints** — what the model should *not* do matters as much as what it should. Scope boundaries prevent the model from drifting into adjacent territory.

**Examples** — showing beats telling. A single example of the output you want calibrates the model faster than a paragraph of description.

#### Common context issues

**Context poisoning** — bad or incorrect information in the context window. The model has no way to know it's wrong and will reason from it as if it were fact.

**Context distraction** — too much irrelevant information mixed in. The model still has to process everything in the window, so burying the signal in noise degrades output quality.

**Context clashing** — contradicting instructions or information. When the model encounters conflicting signals, it produces inconsistent behavior with no reliable way to predict which side it'll favour.

#### Common context solutions

- **RAG** — rather than loading everything upfront, pull only the context relevant to the current task.
- **Compression** — `/compact` strips the conversation down to what matters and discards the rest, keeping the model working on signal.

<br>

### Context Hygiene

Claude re-reads the full conversation history on every message.  
Longer sessions cost more and degrade reasoning quality.  

> [!TIP]
> **Edit, don't follow up.**   
If your last message was unclear, edit it rather than sending a correction.  
Follow-ups compound the context; edits replace it.  
`In Claude Code, press Esc twice to enter rewind mode — restore code, conversation, or both.`

> [!TIP]
> **Batch your questions.**  
If you have multiple things to ask, say, or note — put them all in one message.  
Each separate message triggers a full context re-read, and splitting your thoughts gives Claude a narrower picture.  
One message with everything means fewer steps and better solutions.

> [!TIP]
> **Compact on long sessions.**  
When you're continuing in the same logical domain but the conversation is getting long (either high context usage or 15+ messages) — run `/compact`.  
It reduces token usage by compressing history while keeping Claude's understanding of the current task intact.

> [!TIP]
> **One session, one feature.**  
Don't mix features in a single session — Claude's understanding gets calibrated to what it's been working on, so each feature should have its own isolated context.  
When you're moving to something new, use `/clear` or open a fresh session.

<br>

### Model Strategy

> [!TIP]
> **Use Opus as your advisor.**
> Run `/advisor` once to set Opus as the reviewer Claude consults during complex work. It persists across sessions — Sonnet handles execution, Opus catches what it misses.

<br>

### Parallel Work

**The goal:** each feature gets its own branch, filesystem, and session — fully isolated. Multiple features progress in parallel without ever stepping on each other.

> [!CAUTION]
> Features that overlap in their logical domain will inevitably result in git conflicts when it's time to merge.

#### The out-of-the-box issue
When running multiple Claude sessions in parallel, they share the same files.
One session's half-written changes are another session's broken codebase.

#### Recommended approach
Git worktrees — each worktree gets its own branch and its own isolated copy of the filesystem.

Built into the CLI — one command creates the branch, the worktree, and opens the session in it:
```bash
claude -w feature-name
```

When you close a worktree session with no changes, Claude removes the worktree and branch automatically. If you made commits, Claude prompts you to keep or remove it.

One thing Claude can't do from within the worktree session is remove the worktree itself.
Either exit the session and let Claude prompt you, or handle cleanup from a different session.

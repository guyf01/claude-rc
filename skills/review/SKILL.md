---
name: review
description: Review code changes by delegating to specialist agents and synthesizing a unified report
---

Review `$ARGUMENTS`.

## 1. Determine Review Scope

Use the review scope rule to identify which files changed.

## 2. Read the Diff and Delegate

Read the actual diff content to determine which reviewers to invoke. If changes are only docs, config, tests, or static assets, skip all reviewers.

- **Code review** (`code-reviewer` agent) — run if the diff contains code changes.
- **Security review** (`/security-review`) — run if the diff touches auth, input handling, queries, tokens, session management, or file path construction.
- **Performance review** (`performance-reviewer` agent) — run if the diff touches endpoints, DB queries, loops over collections, caching, or connection management.

## 3. Summarize

Deduplicate findings that overlap between agents. Attribute each finding to the agent that found it.

```
## Review Summary

**Scope**: [staged changes / file path]
**Agents run**: [list]

### Critical / High
- [Agent] File:Line — issue

### Medium / Low
- [Agent] File:Line — issue

### Passed
- [areas with no issues]
```

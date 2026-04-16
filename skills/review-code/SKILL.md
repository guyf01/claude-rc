---
name: review-code
description: Use when the user asks to review code, a diff, staged changes, or a PR for quality, security, and performance issues
---

Review `$ARGUMENTS`.

## 1. Determine Review Scope

Determine what to review in this order:

1. **User-specified scope** — if the user names specific files, a PR, or a commit range, use that.
2. **Staged changes** — run `git diff --cached --name-only`. If there are staged files, review those.
3. **Unstaged changes** — run `git diff --name-only`. If there are unstaged changes, review those.
4. **Branch diff** — if no staged or unstaged changes and on a feature branch: `git diff $(git merge-base HEAD main)...HEAD --name-only`.
5. **On main with no changes** — ask the user for a commit SHA or range.

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

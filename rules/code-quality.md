# Code Quality Rules

## Functions

- Single responsibility — each function does one thing. If it needs a section comment, extract that section.
- Public functions first, then private helpers in call order. Top-to-bottom reads as a story.

## Naming

Names must be intention-revealing, pronounceable, and searchable. A name should answer: why it exists, what it does, and how to use it.

- No single-letter variables, except common conventions (`i`, `j` for loop indices).
- Booleans: `is`, `has`, `should`, `can` prefix — `isLoading`, `hasPermission`.
- Functions: verb-first — `getUser`, `validateEmail`, `handleSubmit`.
- Handlers/callbacks: `handle*` internally, `on*` as props — `handleClick` / `onClick`.
- Constants: `SCREAMING_SNAKE` — `MAX_RETRIES`, `API_BASE_URL`.
- Abbreviations: only universally known (`id`, `url`, `api`, `db`, `config`, `auth`). Acronyms as words: `userId` not `userID`.

## Constants

No magic values. Numbers, strings, and config values must be named constants.

## Comments

The best code needs no comments — only comment what the code itself can never convey.

### Do comment

- WHY, never WHAT. If the code needs a "what" comment, rename instead.
- Non-obvious decisions and workarounds (with issue links).
- Third-party quirks — how an external API behaves in edge cases.
- Business decisions — rate limits, thresholds, or constraints with specific reasons.
- Regex patterns, perf tricks.
- Edge cases and constraints — explain what the issue is and what to watch for.

### Don't comment

- Obvious code, self-explanatory function names.
- Section dividers — if you need a comment to separate sections, the code should be split into a new function or file instead.
- Type annotations the language already provides (e.g., don't comment `// returns string` when the signature already says `: string`).
- Commented-out code — delete it.
- Journal comments — git blame handles history.
- HTML or markup in comments — use plain text only.
- Stale comments — if the code changes, update or remove the comment. A wrong comment is worse than no comment.

## Imports

Builtins → external → internal → relative → types. Blank line between groups.

## Dead Code

No dead code. History is handled by git.

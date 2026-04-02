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

- WHY, never WHAT. If the code needs a "what" comment, rename instead.
- Use plain text only — no HTML or markup in comments.
- Do comment: non-obvious decisions, workarounds with issue links, regex patterns, perf tricks.
- Do comment edge cases and constraints clearly — explain what the issue is and what to watch for.
- Don't comment: obvious code, self-explanatory function names, section dividers, type info the language provides.
- No commented-out code — delete it.
- No journal comments — git blame handles history.

## Imports

Builtins → external → internal → relative → types. Blank line between groups.

## Dead Code

No dead code. History is handled by git.

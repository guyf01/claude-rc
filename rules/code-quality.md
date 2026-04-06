# Code Quality Rules

## Functions

Code shouldn't demand effort to read — it should tell a story.

- Single responsibility — each function does one thing.
- Don't mix different operations or levels of abstraction in one function.
- One level of abstraction per function — the reader should understand what the code does without understanding how it does it.
- If you're separating code blocks with empty lines and could give each block a name — that block is a function waiting to be extracted.
- Blocks inside `if`, `else`, `while`, `try/catch` should ideally be function calls — this gives the logic a name that speaks for itself.
- Fewer arguments is better — zero is ideal, three is a lot. When arguments pile up, they're telling you to pass the idea, not the pieces it's made of — group related ones into objects.

## Classes

- Declare all properties in one place, typically the top of the class (unless the language convention is different).

## Naming

Names must be intention-revealing, pronounceable, and searchable. A name should answer: why it exists, what it does, and how to use it.

- No single-letter variables, except common conventions (`i`, `j` for loop indices).
- Booleans: `is`, `has`, `should`, `can` prefix — `isLoading`, `hasPermission`.
- Functions: verb-first — `getUser`, `validateEmail`, `handleSubmit`.
- Handlers/callbacks: `handle*` internally, `on*` as props — `handleClick` / `onClick`.
- Constants: `SCREAMING_SNAKE` — `MAX_RETRIES`, `API_BASE_URL`.
- Abbreviations: only universally known (`id`, `url`, `api`, `db`, `config`, `auth`). Acronyms as words: `userId` not `userID`.

## Variables

- Declare close to first use — early declarations are baggage for the reader.

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

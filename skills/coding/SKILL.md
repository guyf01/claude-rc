---
name: coding
description: Use when writing, editing, reviewing, or refactoring any code — functions, classes, modules, files, or architecture. Applies to all languages and frameworks.
---

## Development Principles

### Don't Reinvent the Wheel

Before building something yourself, do meaningful due diligence. Use common practices, best practices, and battle-tested open source libraries. Only build custom when nothing suitable exists.

When evaluating libraries, consider popularity (stars), active maintenance, and community health.

### Right Level of Fix

Don't band-aid a broken design, but don't rewrite working code for aesthetics either. When in doubt, prefer fixing the root cause over patching the symptom — even if it means more refactoring.

## Code Organization

### File Scope

- Each file should have one logical domain. If a file needs section comments to separate concerns, split it into separate files and folders.

### Shared Code

- When creating a function, consider whether it belongs in the current file's domain or is a shared generic utility. If generic, move it to a shared utilities location.
- Same for constants — if a constant is generic and shared across domains, place it where it logically belongs, not in the file that first needed it.

### File Layout

A source file should read like a newspaper — the big picture first, details below.

- **Top-level function first.** The entry point sits at the top. Its body is high-level orchestration: function calls and variable names that read like plain English, explaining exactly what happens without revealing how.
- **Call order.** Supporting functions appear in the order they are called from above — so the file reads as one continuous flow, top to bottom, from high-level concepts down to low-level details.
- **Conceptual affinity.** Group functions that belong together. Shared utilities cluster at the bottom, organized by purpose. The result: big picture at the top, supporting functions flowing downward, utilities at the base.

### Structure

- Structure should be easy to extend, not pre-built for extensions. Organize cleanly so adding new things has an obvious place, but don't create empty folders or abstractions for hypothetical features.

## Code Quality

### Functions

Code shouldn't demand effort to read — it should tell a story.

- Single responsibility — each function does one thing.
- Two tests for single responsibility: (1) if you can label chunks of the body with different names, each chunk is a separate function waiting to be extracted; (2) if you can extract a sub-function whose name is not merely a restatement of its implementation, that extraction is real — the responsibility was already there, hiding.
- Don't mix different operations or levels of abstraction in one function.
- One level of abstraction per function — the reader should understand what the code does without understanding how it does it.
- If you're separating code blocks with empty lines and could give each block a name — that block is a function waiting to be extracted.
- Blocks inside `if`, `else`, `while`, `try/catch` should ideally be function calls — this gives the logic a name that speaks for itself.
- Fewer arguments is better — zero is ideal, three is a lot. When arguments pile up, they're telling you to pass the idea, not the pieces it's made of — group related ones into objects.
- If a value can be derived from what the function already knows, or if every reasonable caller would pass the same thing, it's not an argument — it's an implementation detail leaking outward. Arguments should represent decisions the caller is actually in a position to make.
- If you can't tell what a function receives and what it returns without reading the body, the name is wrong. The name, arguments, and return type together should tell the full story.

### Classes

- Declare all properties in one place, typically the top of the class (unless the language convention is different).

Every class is a bet on what kind of change is coming next.

**Decouple data from behavior** (e.g., functions/modules that operate on plain data structures) when you expect to add new behaviors. Existing data stays untouched — new behavior just means a new function. But adding a new data type means updating every existing behavior that handles it.

**Couple data and behavior** (e.g., methods on classes) when you expect to add new types. Each new type brings its own behavior — nothing else changes. But adding a new behavior means updating every existing type to implement it.

- Expect new behaviors → decouple: data stays stable, behaviors extend freely.
- Expect new types → couple: behaviors stay stable, types extend freely.

The design follows the direction of change, not habit.

**Examples:**
- *Report generator* — fixed types (Order, User, Product), behaviors keep growing (PDF, CSV, email digest) → decouple. A new format is just a new function, nothing else changes.
- *Notifications* — behaviors are fixed (send, retry, log), channel types keep growing (email, SMS, push, Slack) → couple. A new channel is just a new class, nothing else changes.

When uncertain, coupling is usually the safer default — it's easier to extract behavior from a class later than to reunite data that's been scattered across separate structures.

**Data Abstraction**

Private fields plus a getter and setter for each one are public fields with extra steps — hiding implementation isn't about adding a layer of functions, it's about abstraction.

Real abstraction means exposing behavior, not structure. A `Point` class doesn't have to expose `x` and `y` at all — it can store polar coordinates internally and offer `getX()`, `getY()`, `getR()`, `getTheta()`, `setCartesian(x, y)`, `setPolar(r, theta)`. The internal representation is invisible. Callers can read coordinates independently but must write them atomically. That's an access policy — not just hidden fields.

The rule: expose what callers *do with the data*, not how the data is stored. Think hard about what operations make sense at the interface level. Blindly adding getters and setters is the worst thing you can do to a class.

Generic suffixes — `Manager`, `Handler`, `Processor`, `Controller` — are a sign you couldn't find the real name. They describe nothing. A class name should say what the object is responsible for. If every class ends in `Manager`, none of them are meaningfully distinct.

### Naming

Names must be intention-revealing, pronounceable, and searchable. A name should answer: why it exists, what it does, and how to use it.

- No single-letter variables, except common conventions (`i`, `j` for loop indices).
- Booleans: `is`, `has`, `should`, `can` prefix — `isLoading`, `hasPermission`.
- Functions: verb-first — `getUser`, `validateEmail`, `handleSubmit`.
- Handlers/callbacks: `handle*` internally, `on*` as props — `handleClick` / `onClick`.
- Constants: `SCREAMING_SNAKE` — `MAX_RETRIES`, `API_BASE_URL`.
- Abbreviations: only universally known (`id`, `url`, `api`, `db`, `config`, `auth`). Acronyms as words: `userId` not `userID`.

**Meaningful distinctions:** Different names must mean different things. `userData` vs `userInfo` vs `userDetails` — if there's no behavioral difference, pick one and delete the others.

**No disinformation:** A name that implies the wrong type is worse than a vague one — it actively lies. `userList` must be a list. `isComplete` must be a boolean. `userCount` must be a number. The name and the thing must agree.

**Similar long names:** Avoid names that differ only in minor ways — `getActiveUserData` vs `getActiveUserInfo`, `settingsMap` vs `settingsObj`. Subtle variation at the end of a long name is easy to miss and hard to distinguish at a glance. If the difference matters, make it prominent.

### Variables

- Declare close to first use — early declarations are baggage for the reader.

### Constants

No magic values. Numbers, strings, and config values must be named constants.

### Comments

The best code needs no comments — only comment what the code itself can never convey.

**Do comment:**
- WHY, never WHAT. If the code needs a "what" comment, rename instead.
- Non-obvious decisions and workarounds (with issue links).
- Third-party quirks — how an external API behaves in edge cases.
- Business decisions — rate limits, thresholds, or constraints with specific reasons.
- Regex patterns, perf tricks.
- Edge cases and constraints — explain what the issue is and what to watch for.

**Don't comment:**
- Obvious code, self-explanatory function names.
- Section dividers — if you need a comment to separate sections, the code should be split into a new function or file instead. Drawing lines between sections doesn't reduce complexity, it just makes the mess look tidy.
- Closing brace labels (`} // end if`, `} // end loop`) — these are symptoms of code that has grown too large, too nested, or lacks proper modularity. The fix is clean functions that do one thing, not annotations that compensate for the mess.
- Type annotations the language already provides.
- Commented-out code — delete it.
- Journal comments — git blame handles history.
- Stale comments — if the code changes, update or remove the comment. A wrong comment is worse than no comment.

### Imports

Builtins → external → internal → relative → types. Blank line between groups.

### Dead Code

No dead code. History is handled by git.

### Documentation

Documentation lets users understand what code does without reading the implementation. Good docs follow a simple pattern:

1. **What it does** — one sentence describing the purpose
2. **Usage example** — a minimal working example
3. **What goes in** — parameters, types, constraints
4. **What comes out** — return value, type, shape
5. **What can go wrong** — errors thrown, edge cases, failure modes

### Error Handling

- Fail fast — validate early and surface errors immediately rather than letting bad state propagate.
- Use typed/custom error classes with error codes — not generic `Error("something went wrong")`.
- Never swallow errors silently. Log or rethrow with added context about what operation failed.
- Never expose stack traces, internal paths, or raw database errors in production responses.
- Error messages must not reveal database schema, file paths, or internal service names.

## Security

### Input

- Validate all user input at the system boundary. Never trust request parameters.
- Use parameterized queries — never concatenate user input into SQL or shell commands.
- Avoid invoking shells. If you must, use array-form APIs (`execFile`, `subprocess.run([...])`) — never string-form (`exec`, `os.system`, `child_process.exec`).
- Never pass user input as template content — use templates with data binding, not string rendering.
- Avoid nested quantifiers in regex on user input (ReDoS) — e.g., `(a+)+`, `(a|b)*c`.
- Enforce length limits on string inputs to prevent DoS via large payloads.
- Validate Content-Type on file uploads.
- Validate file paths — reject `..`, use allowlists, verify resolved path stays within the expected directory.

### Output

- Sanitize output to prevent XSS. Use framework-provided escaping.

### Authentication

- Authentication tokens must be short-lived. Store refresh tokens server-side only.
- Rate-limit authentication endpoints.
- Hash passwords with bcrypt, scrypt, or argon2 — never MD5, SHA1, or SHA256.
- Use constant-time comparison for passwords and tokens (`timingSafeEqual`, `hmac.compare_digest`) — never `==` or `===`.
- JWTs must include an `exp` claim — no tokens without expiration.
- Store session tokens in httpOnly cookies, not localStorage.

### Authorization

- Always check ownership and permissions server-side — never rely on frontend-only authorization.
- Database lookups using user-supplied IDs must verify the resource belongs to the current user.

### Secrets

- Never log secrets, tokens, passwords, or PII.
- No hardcoded credentials or API keys in code — use environment variables or a secrets manager.

### Cryptography

- Use `crypto.randomBytes`, `secrets.token_hex`, or equivalent for security tokens — never `Math.random()` or `random.random()`.
- Never hardcode encryption keys or IVs — load from environment or secrets manager.
- Never use ECB mode for block ciphers.
- Enforce HTTPS — redirect HTTP to HTTPS, set HSTS headers.

### Dependencies

- Pin dependency versions in CI.
- Use integrity hashes (SRI) when importing from CDNs.

### Headers

- Set appropriate CORS, CSP, and security headers.

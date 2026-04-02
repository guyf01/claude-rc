# Error Handling Rules

## General

- Fail fast — validate early and surface errors immediately rather than letting bad state propagate.
- Use typed/custom error classes with error codes — not generic `Error("something went wrong")`.
- Never swallow errors silently. Log or rethrow with added context about what operation failed.

## Production Safety

- Never expose stack traces, internal paths, or raw database errors in production responses.

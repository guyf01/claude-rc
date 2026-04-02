# Security Rules

## Input

- Validate all user input at the system boundary. Never trust request parameters.
- Use parameterized queries — never concatenate user input into SQL or shell commands.
- Avoid invoking shells. If you must, use array-form APIs (`execFile`, `subprocess.run([...])`) — never string-form (`exec`, `os.system`, `child_process.exec`).
- Never pass user input as template content — use templates with data binding, not string rendering.
- Avoid nested quantifiers in regex on user input (ReDoS) — e.g., `(a+)+`, `(a|b)*c`.
- Enforce length limits on string inputs to prevent DoS via large payloads.
- Validate Content-Type on file uploads.
- Validate file paths — reject `..`, use allowlists, verify resolved path stays within the expected directory.

## Output

- Sanitize output to prevent XSS. Use framework-provided escaping.

## Authentication

- Authentication tokens must be short-lived. Store refresh tokens server-side only.
- Rate-limit authentication endpoints.
- Hash passwords with bcrypt, scrypt, or argon2 — never MD5, SHA1, or SHA256.
- Use constant-time comparison for passwords and tokens (`timingSafeEqual`, `hmac.compare_digest`) — never `==` or `===`.
- JWTs must include an `exp` claim — no tokens without expiration.
- Store session tokens in httpOnly cookies, not localStorage.

## Authorization

- Always check ownership and permissions server-side — never rely on frontend-only authorization.
- Database lookups using user-supplied IDs must verify the resource belongs to the current user.

## Secrets

- Never log secrets, tokens, passwords, or PII.
- No hardcoded credentials or API keys in code — use environment variables or a secrets manager.

## Cryptography

- Use `crypto.randomBytes`, `secrets.token_hex`, or equivalent for security tokens — never `Math.random()` or `random.random()`.
- Never hardcode encryption keys or IVs — load from environment or secrets manager.
- Never use ECB mode for block ciphers.
- Enforce HTTPS — redirect HTTP to HTTPS, set HSTS headers.

## Dependencies

- Pin dependency versions in CI.
- Use integrity hashes (SRI) when importing from CDNs.

## Headers

- Set appropriate CORS, CSP, and security headers.

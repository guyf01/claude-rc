# Security Rules

## Input

- Validate all user input at the system boundary. Never trust request parameters.
- Use parameterized queries — never concatenate user input into SQL or shell commands.

## Output

- Sanitize output to prevent XSS. Use framework-provided escaping.

## Authentication

- Authentication tokens must be short-lived. Store refresh tokens server-side only.
- Rate-limit authentication endpoints.

## Secrets

- Never log secrets, tokens, passwords, or PII.

## Headers

- Set appropriate CORS, CSP, and security headers.

# CLAUDE.md

Every project should have a `CLAUDE.md` at the root. It gives Claude project-specific context: stack, conventions, test commands, what to avoid.

## When working in a project

- If `CLAUDE.md` exists, read it at the start of the session and follow it.
- If you learn something new about the project (conventions, constraints, decisions), suggest updating `CLAUDE.md` to capture it.

## When CLAUDE.md is missing

Ask the user once:

> "There's no `CLAUDE.md` in this project. Want to run `/init`? It analyzes the codebase and generates one automatically — covers stack, structure, conventions, and test commands. You can edit it afterwards."

Don't ask repeatedly. If they say no, drop it.

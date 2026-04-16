# dotclaude

Personal Claude Code configuration repo. Defines the rules, skills, agents, and hooks that apply globally across all projects.

## Structure

```
rules/       — Global instruction files loaded into every session as memory
skills/      — Slash commands for specific workflows
agents/      — Subagent definitions for specialized tasks
hooks/       — Shell scripts that run on Claude Code events
bookmarks.md  — Reference links: installed plugins, inspiration, tools to explore
README.md     — Human-facing guidance on how to operate Claude effectively
settings.json — Hook configuration
setup.sh      — Initial setup script
```

## Conventions

**Rules** — one domain per file. If a file needs section comments to separate concerns, split it. Add new rules to the relevant existing file, or create a new file for a genuinely new domain.

**Skills** — each skill is a folder with a `SKILL.md` file. Keep it under 500 lines. Put detailed reference material in a `references/` subfolder. The `description` field in the frontmatter determines when the skill auto-triggers — make it specific. For invoke-only skills, add `disable-model-invocation: true` to the frontmatter.

**Agents** — subagent definitions. Each agent has one clear purpose.

**Hooks** — shell scripts tied to Claude Code events via `settings.json`. Touch carefully — they run on every matching event.

**Bookmarks** — external references only. Two sections: `Inspiration` (sources that shaped this setup) and `To Explore` (worth revisiting later). Not for in-progress work or tasks.

## When working in this repo

- Update `CLAUDE.md` only when the structure or conventions change — not for every file added.
- When adding a rule, check if it belongs in an existing file before creating a new one.
- When adding a skill, follow the existing folder structure.
- `bookmarks.md` is a reference document, not a task list.

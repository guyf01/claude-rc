# Bookmarks

## Inspiration

- [anthropics/skills](https://github.com/anthropics/skills) — Anthropic's official skills collection. Reviewed frontend-design.
- [UI/UX Pro Max](https://lobehub.com/skills/qdleader-qdleader-ui-ux-pro-max) — 50+ styles, 97 color palettes, 57 font pairings, 99 UX guidelines, 25 chart types. Fully cherry-picked into frontend.md.

- [luongnv89/claude-howto](https://github.com/luongnv89/claude-howto) — comprehensive Claude Code learning guide. 10 modules covering skills, hooks, MCP, subagents, plugins, planning mode. Good reference when going deeper on any Claude Code feature.
- [poshan0126/dotclaude](https://github.com/poshan0126/dotclaude) — lean, token-efficient `.claude/` config. Good reference for agent design, hooks, and scoped rules.

## Installed Plugins

- [superpowers](https://github.com/claude-plugins-official/superpowers) — core workflow skills: brainstorming, planning, debugging, code review, TDD, subagents, git worktrees, verification
- [frontend-design](https://github.com/anthropics/skills/tree/main/skills/frontend-design) — distinctive production-grade UI generation, avoids generic AI aesthetics
- [skill-creator](https://github.com/anthropics/skills/tree/main/skills/skill-creator) — full skill development lifecycle: write, evaluate, benchmark, and iterate on skills
- [code-review](https://github.com/claude-plugins-official/code-review) — PR code review
- [feature-dev](https://github.com/claude-plugins-official/feature-dev) — guided feature development with codebase understanding
- [ralph-loop](https://github.com/claude-plugins-official/ralph-loop) — recurring prompt loop runner
- [security-guidance](https://github.com/claude-plugins-official/security-guidance) — security review and guidance

## To Explore

- [anthropics/skills — canvas-design](https://github.com/anthropics/skills/tree/main/skills/canvas-design) — generates sophisticated visual art (PDF/PNG). Good for premium web backgrounds, hero section visuals, and decorative assets. Not for structured ad layouts or templated marketing materials.
- [anthropics/skills — theme-factory](https://github.com/anthropics/skills/tree/main/skills/theme-factory) — 10 preset themes (colors + fonts) for styling slides, documents, and reports. Not for UI dev — only useful if generating polished artifacts through Claude.
- [Figma MCP + Claude Code](https://github.com/figma/mcp-server-guide) — Figma ↔ Claude Code integration. Figma → production code with 1:1 fidelity, and code → editable Figma frames. Install via `/plugin install figma@claude-plugins-official`. Worth setting up if working with designers or doing client handoffs. Not needed for solo code-first workflow.


- [HKUDS/OpenSpace](https://github.com/HKUDS/OpenSpace) — self-evolving AI agent framework. Skills improve from successful executions and sync to a community. MCP-based, plugs into Claude Code. Low effort to try — worth experimenting with.
- [lobehub/lobehub](https://github.com/lobehub/lobehub) — self-hosted AI agent workspace. Multi-agent teams, persistent memory, 10,000+ MCP skills. Next.js/Docker. More of a productivity platform than a dev tool.


- [expo/skills — building-native-ui](https://github.com/expo/skills/tree/main/plugins/expo/skills/building-native-ui) — Expo Router, native iOS UI patterns, animations. Relevant if/when doing native mobile (iOS/Android), not needed for web.
- [vercel-labs/react-native-skills](https://lobehub.com/skills/vercel-labs-agent-skills-react-native-skills) — RN best practices across performance, animation, state, rendering, monorepo. ~Half applies to RN web (memoization, state, rendering rules). Other half is mobile-only. Cherry-pick rules into own rules/ rather than using as-is.
